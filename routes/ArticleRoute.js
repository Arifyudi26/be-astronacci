import express from "express";
import {
  getArticle,
  getArticleById,
} from "../controllers/ArticleControllers.js";
import { jwtAuth } from "../middleware/AuthUser.js";
import { membershipType } from "../middleware/ContentMidleware.js";

const router = express.Router();

router.get("/article", jwtAuth, membershipType, getArticle);
router.get("/article/:id", jwtAuth, getArticleById);

export default router;
