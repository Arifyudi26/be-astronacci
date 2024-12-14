import Videos from "../models/VideoModel.js";
import User from "../models/UserModel.js";

export const getVideo = async (req, res) => {
  try {
    const data = await Videos.findAll({
      attributes: ["id", "title", "url", "createdAt", "updatedAt"],
      include: [
        {
          model: User,
          attributes: ["name", "email"],
        },
      ],
    });

    const limitedVideos = req.limit ? data.slice(0, req.limit) : data;
    res.status(200).json({ data: limitedVideos, message: "success" });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const getVideoById = async (req, res) => {
  try {
    const data = await Videos.findOne({
      where: {
        id: req.params.id,
      },
    });
    if (!data) return res.status(404).json({ message: "Data tidak ditemukan" });

    let response = await Videos.findOne({
      attributes: ["id", "title", "url", "createdAt", "updatedAt"],
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

export const createVideo = async (req, res) => {
  const { name, price } = req.body;
  try {
    await Videos.create({
      name: name,
      price: price,
      userId: req.userId,
    });
    res.status(201).json({ message: "Videos Created Successfuly" });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};
