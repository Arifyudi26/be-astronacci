import express from "express";
import cors from "cors";
import session from "express-session";
import dotenv from "dotenv";
import "./config/passport.js";
import passport from "passport";
import UserRoute from "./routes/UserRoute.js";
import ArticleRoute from "./routes/ArticleRoute.js";
import VideoRoute from "./routes/VideoRoute.js";
import AuthRoute from "./routes/AuthRoute.js";
// import db from "./config/Database.js";

dotenv.config();

const app = express();

// (async () => {
//   await db.sync({ alter: true });
// })();

app.use(
  session({
    secret: process.env.SESS_SECRET,
    resave: false,
    saveUninitialized: true,
    cookie: {
      secure: "auto",
    },
  })
);

app.use(passport.initialize());
app.use(passport.session());

app.use(
  cors({
    credentials: true,
    origin: "http://localhost:3000",
  })
);
app.use(express.json());

app.use("/api", UserRoute);
app.use("/api", ArticleRoute);
app.use("/api", VideoRoute);
app.use("/api", AuthRoute);

app.listen(process.env.APP_PORT, () => {
  console.log("Server up and running...");
});
