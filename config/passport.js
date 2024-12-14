import dotenv from "dotenv";
dotenv.config();
import passport from "passport";
import { Strategy as GoogleStrategy } from "passport-google-oauth20";
import db from "./Database.js";
import Users from "../models/UserModel.js";

passport.serializeUser((user, done) => {
  done(null, user.id); // Menyimpan ID pengguna
});

passport.deserializeUser(async (id, done) => {
  try {
    const user = await Users.findByPk(id);
    done(null, user);
  } catch (error) {
    done(error, null);
  }
});

passport.use(
  new GoogleStrategy(
    {
      clientID: process.env.GOOGLE_CLIENT_ID,
      clientSecret: process.env.GOOGLE_CLIENT_SECRET,
      callbackURL: "http://localhost:5000/api/auth/google/callback",
    },
    async (accessToken, refreshToken, profile, done) => {
      try {
        let user = await Users.findOne({ where: { id: profile.id } });

        if (!user) {
          user = await Users.create({
            id: profile.id,
            name: profile.displayName,
            email: profile.emails[0].value,
            picture: profile.photos[0].value,
            type_membership: "type-a",
          });
        }

        done(null, user);
      } catch (error) {
        done(error, null);
      }
    }
  )
);
