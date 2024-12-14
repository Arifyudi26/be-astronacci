import Articles from "../models/ArticleModel.js";
import User from "../models/UserModel.js";

export const getArticle = async (req, res) => {
  try {
    const data = await Articles.findAll({
      attributes: ["id", "title", "content", "createdAt", "updatedAt"],
      include: [
        {
          model: User,
          attributes: ["name", "email"],
        },
      ],
    });

    const limitedArticles = req.limit ? data.slice(0, req.limit) : data;
    res.status(200).json({ data: limitedArticles, message: "success" });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const getArticleById = async (req, res) => {
  try {
    const data = await Articles.findOne({
      where: {
        id: req.params.id,
      },
    });
    if (!data) return res.status(404).json({ message: "Data not found!" });

    let response = await Articles.findOne({
      attributes: ["id", "title", "content", "createdAt", "updatedAt"],
      where: {
        id: data.id,
      },
      include: [
        {
          model: User,
          attributes: ["name", "email"],
        },
      ],
    });

    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};
