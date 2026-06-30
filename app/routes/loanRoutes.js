const express = require("express");

const routes = express.Router();

const LoanController = require("../controllers/LoanController");

routes.post("/", LoanController.create);

routes.get("/", LoanController.list);

routes.get("/:id", LoanController.show);

routes.put("/:id", LoanController.update);

routes.delete("/:id", LoanController.delete);

module.exports = routes;