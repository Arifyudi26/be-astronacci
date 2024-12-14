import { Sequelize } from "sequelize";
import db from "../config/Database.js";

const { DataTypes } = Sequelize;

const generateDummyData = async () => {
  const Articles = db.define("article", {
    id: {
      primaryKey: true,
      type: DataTypes.STRING,
      defaultValue: DataTypes.UUIDV4,
      allowNull: false,
    },
    title: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    content: {
      type: DataTypes.TEXT,
      allowNull: false,
    },
    userId: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
  });

  const Videos = db.define("video", {
    id: {
      primaryKey: true,
      type: DataTypes.STRING,
      defaultValue: DataTypes.UUIDV4,
      allowNull: false,
    },
    title: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    url: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    userId: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
  });

  await db.sync({ force: true });

  const dummyArticles = Array.from({ length: 20 }, (_, i) => ({
    title: `Article Title ${i + 1}`,
    content: `This is the content of article ${i + 1}.`,
    userId: "6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa",
  }));

  const dummyVideos = Array.from({ length: 20 }, (_, i) => ({
    title: `Video Title ${i + 1}`,
    url: `https://www.youtube.com/embed/9xwazD5SyVg?si=90uB48buHDrTTjqq`,
    userId: "6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa",
  }));

  await Articles.bulkCreate(dummyArticles);
  await Videos.bulkCreate(dummyVideos);

  console.log("Dummy data has been populated.");
};

generateDummyData().catch((error) => {
  console.error("Error populating dummy data:", error);
});

export default generateDummyData;
