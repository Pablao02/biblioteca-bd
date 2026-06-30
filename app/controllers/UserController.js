const User = require("../models/User");

module.exports = {

    async create(req, res) {

        try {

            const user = await User.create(req.body);

            return res.status(201).json(user);

        } catch (error) {

            return res.status(400).json({
                erro: error.message
            });

        }

    },

    async list(req, res) {

        const users = await User.findAll();

        return res.json(users);

    }

};