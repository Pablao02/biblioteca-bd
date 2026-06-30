const Category = require("../models/Category");

module.exports = {

    async create(req, res) {
        try {
            const category = await Category.create(req.body);
            return res.status(201).json(category);
        } catch (error) {
            return res.status(400).json({ erro: error.message });
        }
    },

    async list(req, res) {
        const categories = await Category.findAll();
        return res.json(categories);
    },

    async show(req, res) {
        const category = await Category.findByPk(req.params.id);

        if (!category) {
            return res.status(404).json({
                erro: "Categoria não encontrada"
            });
        }

        return res.json(category);
    },

    async update(req, res) {
        const category = await Category.findByPk(req.params.id);

        if (!category) {
            return res.status(404).json({
                erro: "Categoria não encontrada"
            });
        }

        await category.update(req.body);

        return res.json(category);
    },

    async delete(req, res) {
        const category = await Category.findByPk(req.params.id);

        if (!category) {
            return res.status(404).json({
                erro: "Categoria não encontrada"
            });
        }

        await category.destroy();

        return res.json({
            mensagem: "Categoria removida com sucesso"
        });
    }

};