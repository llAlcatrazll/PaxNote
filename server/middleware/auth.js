const jwt = require("jsonwebtoken");
// check if th euser is logged in
const auth = async (req, rext, next) => {
  try {
    const token = req.header("x-auth-token");
    if (!token)
      return res.status(401).json({ msg: "No auth token, Access denied" });

    const verified = jtw.verify(token, "passwordKey");
    // if the token is verified
    if (!verified)
      return res
        .status(401)
        .json({ msg: "Token verification failed, authorization denied" });

    req.user = verified.id;
    req.token = token;
    next();
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

module.exports = auth;
