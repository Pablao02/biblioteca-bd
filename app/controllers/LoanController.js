const Loan = require("../models/Loan");

module.exports = {

    async create(req, res) {
        try {
            const loan = await Loan.create(req.body);
            return res.status(201).json(loan);
        } catch (error) {
            return res.status(400).json({
                erro: error.message
            });
        }
    },

    async list(req, res) {
        const loans = await Loan.findAll();
        return res.json(loans);
    },

    async show(req, res) {
        const loan = await Loan.findByPk(req.params.id);

        if (!loan) {
            return res.status(404).json({
                erro: "Empréstimo não encontrado"
            });
        }

        return res.json(loan);
    },

    async update(req, res) {
        const loan = await Loan.findByPk(req.params.id);

        if (!loan) {
            return res.status(404).json({
                erro: "Empréstimo não encontrado"
            });
        }

        await loan.update(req.body);

        return res.json(loan);
    },

    async delete(req, res) {
        const loan = await Loan.findByPk(req.params.id);

        if (!loan) {
            return res.status(404).json({
                erro: "Empréstimo não encontrado"
            });
        }

        await loan.destroy();

        return res.json({
            mensagem: "Empréstimo removido com sucesso"
        });
    }

};