const bcrypt = require("bcrypt");
const saltround = 10;
const AccountModel = require("../model/AccountModel.js");
module.exports = {
    async create(req, res, next) {
        const { email, password } = req.body;
        try {
            if (!email || !password)
                res.status(400).send("Missing one of password/email");
            else if ((await AccountModel.get(email)) != null) {
                res.status(400).send("Email is already registered");
            } else {
                if (typeof password !== "string") {
                   password = String(password)
                }
                const encrypted_pass = await bcrypt.hash(String(password), 10);
                await AccountModel.insert(
                    new AccountModel.AccountInfo(email, encrypted_pass)
                );
                //    ---NEED Implement later
                // await UserModel.insert(
                //     new UserModel.UserInfo(email, null, null)
                // );
                res.status(200).send("OK");
            }
        } catch (err) {
            next(err);
        }
    },
};
