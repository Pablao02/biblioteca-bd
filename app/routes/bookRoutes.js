const express = require("express");

const routes = express.Router();

const BookController = require("../controllers/BookController");

routes.post("/", BookController.create);

routes.get("/", BookController.list);

routes.get("/:id", BookController.show);

routes.put("/:id", BookController.update);

routes.delete("/:id", BookController.delete);

module.exports = routes;