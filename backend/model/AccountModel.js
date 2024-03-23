const db = require("../modules/Database");

module.exports = {
    AccountInfo: class {
        constructor(email, password) {
            if (!email) {
                throw new Error("'email' must be present for an account");
            }
            this.email = email;
            this.password = password;
        }
    },
    async get(email) {
        let condition = "";
        if (email) condition += ` email = '${email}'`;
        else throw new Error("Email is missing");
        // SQL INJECTION
        let result = await db.get("Account", condition);
        if (result == null) return null;
        {
            
            const { email, password, type } = result;
            return new this.AccountInfo(email, password, type);
        }
    },
    async insert(acc_info) {
        if (!(acc_info instanceof this.AccountInfo)) {
            throw new Error(
                "Can't insert object of different type than AccountInfo to 'Account' table"
            );
        }
        await db.helper_insert("Account", acc_info);
    },
};
