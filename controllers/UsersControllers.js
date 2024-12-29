import User from "../models/UserModel.js";

export const getUsers = async (req, res) => {
  try {
    const response = await User.findAll({
      attributes: ["id", "name", "email", "type_membership"],
    });
    res.status(200).json({ data: response, message: "success" });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const getUserById = async (req, res) => {
  try {
    const user = await User.findOne({
      attributes: ["id", "name", "email", "type_membership", "bio"],
      where: {
        id: req.params.id,
      },
    });

    if (!user) return res.status(404).json({ message: "User not found" });

    res.status(200).json(user);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const updateUserById = async (req, res) => {
  try {
    const user = await User.findOne({
      where: {
        id: req.params.id,
      },
    });

    if (!user) return res.status(404).json({ message: "User not found" });

    const { name, email, type_membership, bio } = req.body;

    if (!name) return res.status(400).json({ message: "Name is required" });
    if (!email) return res.status(400).json({ message: "Email is required" });
    if (!type_membership)
      return res.status(400).json({ message: "Type Membership is required" });
    if (!bio) return res.status(400).json({ message: "Bio is required" });

    // Check whether the input data is the same as the old data
    const isSameData =
      user.name === name &&
      user.email === email &&
      user.type_membership === type_membership &&
      user.bio === bio;

    if (isSameData) {
      return res
        .status(400)
        .json({ message: "No changes detected. Update failed." });
    }

    await user.update({
      name: name,
      email: email,
      type_membership: type_membership,
      bio: bio,
    });

    res.status(200).json({
      message: "User updated successfully",
      user: {
        id: user.id,
        name: user.name,
        email: user.email,
        type_membership: user.type_membership,
        bio: user.bio,
      },
    });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};
