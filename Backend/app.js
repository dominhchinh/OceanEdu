const express = require("express");
const path = require("path");
var cors = require("cors");
const cookieParser = require("cookie-parser");
const logger = require("morgan");
const fileUpload = require("express-fileupload");
require("dotenv").config();

const indexRouter = require("./routes/index");
const app = express();

global.__basedir = __dirname;
global.__idcreated = -1;
global.__roleId = -1;

app.use(logger("dev"));

app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, "public")));
app.use(cors({ origin: "http://localhost:3000", credentials: true }));
app.use(fileUpload());
app.use("/api", indexRouter);

const PORT = process.env.PORT || 8386;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});

module.exports = app;
