const { DataTypes } = require("sequelize");
const sequelize = require("../../config/database");

const Book = sequelize.define("Book", {
  titulo: {
    type: DataTypes.STRING,
    allowNull: false,
  },

  autor: {
    type: DataTypes.STRING,
    allowNull: false,
  },

  isbn: {
    type: DataTypes.STRING,
    unique: true,
    allowNull: false,
  },

  ano: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },

  quantidade: {
    type: DataTypes.INTEGER,
    defaultValue: 1,
  },
});

module.exports = Book;