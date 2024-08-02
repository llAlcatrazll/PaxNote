const mongoose = require("mongoose");
// Mongo DB json data format
// adjust for user parameters
const userSchema = mongoose.Schema({
  name: {
    required: true,
    type: String,
    trim: true,
  },
  email: {
    required: true,
    type: String,
    trim: true,
    validate: {
      validator: (value) => {
        const re =
          /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
        return value.match(re);
      },
      message: "Please enter a valid email address",
    },
  },
  password: {
    required: true,
    type: String,
  },
  course: { required: true, type: String },
  year: { required: true, type: String },
  studentid: { required: true, type: String },
  college: { required: true, type: String },
});

const User = mongoose.model("User", userSchema);
module.exports = User;
