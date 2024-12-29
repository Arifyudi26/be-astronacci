import express from "express";
import {
  getUsers,
  getUserById,
  updateUserById,
} from "../controllers/UsersControllers.js";
import { jwtAuth } from "../middleware/AuthUser.js";

const router = express.Router();

router.get("/users", jwtAuth, getUsers);
router.get("/users/:id", jwtAuth, getUserById);
router.put("/users/:id", jwtAuth, updateUserById);

export default router;
