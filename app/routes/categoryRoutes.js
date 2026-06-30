const express = require("express");

const routes = express.Router();

const CategoryController = require("../controllers/CategoryController");

routes.post("/", CategoryController.create);
routes.get("/", CategoryController.list);
routes.get("/:id", CategoryController.show);
routes.put("/:id", CategoryController.update);
routes.delete("/:id", CategoryController.delete);

module.exports = routes;