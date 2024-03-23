const express = require("express");
const AccountController = require("../controller/Account");
const authRouter = express.Router();

authRouter.post("/api/signup", AccountController.create);
authRouter.get("/api/signup", (req, res, next) => {
    // NotImplementException
});
module.exports = authRouter;
