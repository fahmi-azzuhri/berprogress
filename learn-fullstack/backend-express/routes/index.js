const express = require("express");
const router = express.Router();

const { validateRegister } = require("../utils/validators/auth");
const registerController = require("../controllers/RegisterController");

router.post("/register", validateRegister, registerController.register);

module.exports = router;
