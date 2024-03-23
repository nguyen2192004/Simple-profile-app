const express = require("express");
const authRouter = require("./routes/auth");
const cors = require("cors");

const PORT = process.env.PORT || 8000;
const app = express();
app.use(cors());
app.use(express.json())
app.use((req, res, next) => {
    console.log("[INFO]", req.path);
    console.log("[INFO]", req.query);
    console.log("[INFO]", req.session);
    next();
});

app.use(authRouter);

app.listen(PORT, () => {
    console.log(`Example app listening on port ${PORT}`);
});
