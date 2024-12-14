import {Sequelize} from "sequelize";

const db = new Sequelize('db_astronacci', 'root', '', {
    host: "localhost",
    dialect: "mysql"
});

export default db;