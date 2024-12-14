import express from "express";
import { getVideo, getVideoById } from "../controllers/VideoControllers.js";
import { membershipType } from "../middleware/ContentMidleware.js";
import { jwtAuth } from "../middleware/AuthUser.js";

const router = express.Router();

router.get("/video", jwtAuth, membershipType, getVideo);
router.get("/video/:id", jwtAuth, getVideoById);

export default router;
