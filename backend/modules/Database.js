const pgp = require("pg-promise")({
    capSQL: true,
});

const DB_NAME = "netflix";
const cn = {
    host: 'localhost',
    port: '5432',
    database: DB_NAME,
    password: '123456@Huy',
    user: 'postgres',
    max: 30,
};

const netflix_db = pgp(cn);

module.exports = {
    async exec(sql) {
        let conn = null;
        try {
            conn = await netflix_db.connect();
            const result = await conn.any(sql);
            return result;
        } catch (err) {
            throw err;
        } finally {
            if (conn) conn.done();
        }
    },
    async helper_insert(tb_name, obj) {
        this.exec(pgp.helpers.insert(obj, null, tb_name));
    },

    async get(tb_name, condition) {
        let conn = null;
        try {
            conn = await netflix_db.connect();
            return await conn.oneOrNone(
                `select * from "${tb_name}" where ${condition}`
            );
        } catch (err) {
            throw err;
        } finally {
            if (conn) conn.done();
        }
    },
};
