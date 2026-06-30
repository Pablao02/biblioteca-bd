require("dotenv").config();

const express = require("express");
const cors = require("cors");

const sequelize = require("./config/database");

const userRoutes = require("./app/routes/userRoutes");
const bookRoutes = require("./app/routes/bookRoutes");
const categoryRoutes = require("./app/routes/categoryRoutes");
const loanRoutes = require("./app/routes/loanRoutes");

const app = express();

app.use(cors());
app.use(express.json());

app.use("/users", userRoutes);
app.use("/books", bookRoutes);
app.use("/categories", categoryRoutes);
app.use("/loans", loanRoutes);

app.get("/", (req, res) => {
  res.json({
    message: "API Biblioteca funcionando!"
  });
});

sequelize.sync()
  .then(() => {
    console.log("✅ Banco sincronizado!");

    app.listen(process.env.PORT || 3000, () => {
      console.log(`🚀 Servidor rodando na porta ${process.env.PORT || 3000}`);
    });
  })
  .catch((err) => {
    console.error("Erro ao conectar ao banco:", err);
  });