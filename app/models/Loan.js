const { DataTypes } = require("sequelize");
const sequelize = require("../../config/database");

const Loan = sequelize.define("Loan", {
  dataEmprestimo: {
    type: DataTypes.DATE,
    allowNull: false,
    defaultValue: DataTypes.NOW,
  },

  dataDevolucao: {
    type: DataTypes.DATE,
    allowNull: true,
  },

  status: {
    type: DataTypes.ENUM("EMPRESTADO", "DEVOLVIDO"),
    defaultValue: "EMPRESTADO",
  },
});

module.exports = Loan;