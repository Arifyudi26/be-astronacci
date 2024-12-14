import express from "express";
import {
  getUsers,
  getUserById,
} from "../controllers/UsersControllers.js";
import { jwtAuth } from "../middleware/AuthUser.js";

const router = express.Router();

router.get("/users", jwtAuth, getUsers);
router.get("/users/:id", jwtAuth, getUserById);

export default router;
