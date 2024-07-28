const express = require("express");
const mongoose = require("mongoose");
const authRouter = require("./routers/auth");

const PORT = process.env.PORT || 3000;
const app = express();

app.use(express.json());
app.use(authRouter);

const DB =
  "mongodb+srv://alexismagaway:test123@paxnotedb.8fcdnct.mongodb.net/?retryWrites=true&w=majority&appName=PaxNoteDB";
// test123
// alexismagaway
mongoose
  .connect(DB)
  .then(() => {
    console.log("Connection Successfull");
  })
  .catch((e) => {
    console.log(`connection failed ${e}`);
  });

app.listen(PORT, "0.0.0.0", () => {
  console.log(`connected at PORT ${PORT}`);
});
