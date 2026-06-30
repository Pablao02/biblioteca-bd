const Book = require("../models/Book");

module.exports = {

    async create(req, res) {

        try {

            const book = await Book.create(req.body);

            return res.status(201).json(book);

        } catch (error) {

            return res.status(400).json({
                erro: error.message
            });

        }

    },

    async list(req, res) {

        const books = await Book.findAll();

        return res.json(books);

    },

    async show(req, res) {

        const book = await Book.findByPk(req.params.id);

        if (!book) {
            return res.status(404).json({
                erro: "Livro não encontrado"
            });
        }

        return res.json(book);

    },

    async update(req, res) {

        const book = await Book.findByPk(req.params.id);

        if (!book) {
            return res.status(404).json({
                erro: "Livro não encontrado"
            });
        }

        await book.update(req.body);

        return res.json(book);

    },

    async delete(req, res) {

        const book = await Book.findByPk(req.params.id);

        if (!book) {
            return res.status(404).json({
                erro: "Livro não encontrado"
            });
        }

        await book.destroy();

        return res.json({
            mensagem: "Livro removido com sucesso"
        });

    }

};