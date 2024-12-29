import User from "../models/UserModel.js";
import argon2 from "argon2";
import jwt from "jsonwebtoken";
import axios from "axios";
import passport from "passport";

export const Register = async (req, res) => {
  const { name, email, password, confPassword } = req.body;

  if (password !== confPassword)
    return res
      .status(400)
      .json({ message: "Password and Confirm Password do not match" });
  const hashPassword = await argon2.hash(password);
  try {
    await User.create({
      name: name,
      email: email,
      password: hashPassword,
      type_membership: "type-a",
    });
    res.status(201).json({ message: "Register Successfully" });
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

export const Login = async (req, res) => {
  const user = await User.findOne({
    where: {
      email: req.body.email,
    },
  });
  if (!user) return res.status(404).json({ message: "User not found" });
  const match = await argon2.verify(user.password, req.body.password);
  if (!match) return res.status(400).json({ message: "Wrong Password" });
  const id = user.id;
  const name = user.name;
  const email = user.email;
  const type_membership = user.type_membership;

  const accessToken = jwt.sign(
    { id, name, email, type_membership },
    process.env.JWT_SECRET,
    {
      expiresIn: "1d",
    }
  );

  res
    .status(200)
    .json({ user: { id, name, email, type_membership }, accessToken });
};

export const LoginFacebook = async (req, res) => {
  try {
    const { accessToken } = req.body;

    if (!accessToken) {
      return res.status(400).json({ message: "Access token is required" });
    }

    const response = await axios.get(
      `https://graph.facebook.com/me?access_token=${accessToken}&fields=id,name,email,picture`
    );
    const userProfile = response.data;

    let user = await User.findOne({ where: { id: userProfile.id } });

    if (!user) {
      return res
        .status(401)
        .json({ message: "Facebook is not registered yet" });
    }

    if (!userProfile) {
      return res.status(401).json({ message: "Invalid Facebook access token" });
    }

    const token = jwt.sign(
      { id: userProfile.id, name: userProfile.name, email: userProfile.email },
      process.env.JWT_SECRET,
      { expiresIn: "7d" }
    );

    return res.json({
      message: "Login successful",
      user: {
        id: user.id,
        name: user.name,
        email: user.email,
        picture: user.picture,
      },
      accessToken: token,
    });
  } catch (error) {
    console.error("Error during Facebook login:", error);
    return res.status(500).json({ message: "Server error during login" });
  }
};

export const RegisterFacebook = async (req, res) => {
  try {
    const { accessToken } = req.body;

    if (!accessToken)
      return res.status(400).json({ message: "Access token is required" });

    const response = await axios.get(
      `https://graph.facebook.com/me?access_token=${accessToken}&fields=id,name,email,picture`
    );

    const userProfile = response.data;

    if (!userProfile) {
      return res.status(401).json({ message: "Invalid Facebook access token" });
    }

    let user = await User.findOne({ where: { id: userProfile.id } });

    if (!user) {
      user = await User.create({
        id: userProfile.id,
        name: userProfile.name,
        email: userProfile.email || null,
        picture: userProfile.picture?.data?.url || null,
        type_membership: "type-a",
      });
    }

    const token = jwt.sign(
      { id: user._id, name: user.name, email: user.email },
      process.env.JWT_SECRET,
      { expiresIn: "7d" }
    );

    return res.status(200).json({
      message: "Register Successfully",
      user: {
        id: user._id,
        name: user.name,
        email: user.email,
        picture: user.picture,
      },
      accessToken: token,
    });
  } catch (error) {
    console.error("Error during Facebook register:", error.message);
    return res.status(500).json({ message: "Server error during register" });
  }
};

export const LoginGoogle = (req, res, next) => {
  passport.authenticate("google", { scope: ["profile", "email"] })(
    req,
    res,
    next
  );
};

export const LoginGoogleCallback = (req, res, next) => {
  passport.authenticate("google", (err, user, info) => {
    if (err) {
      return res
        .status(500)
        .json({ message: "Internal server error", error: err });
    }
    if (!user) {
      return res.status(401).json({ message: "Authentication failed" });
    }
    req.logIn(user, (err) => {
      if (err) {
        return res
          .status(500)
          .json({ message: "Failed to log in user", error: err });
      }

      const token = jwt.sign(
        { id: user._id, name: user.name, email: user.email },
        process.env.JWT_SECRET,
        { expiresIn: "7d" }
      );

      res.redirect(
        `http://localhost:3000/login?token=${encodeURIComponent(
          token
        )}&user=${encodeURIComponent(
          JSON.stringify({
            id: user.id,
            name: user.name,
            email: user.email,
            picture: user.picture,
          })
        )}`
      );
    });
  })(req, res, next);
};
