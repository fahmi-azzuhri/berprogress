const express = require("express");
const router = express.Router();

const { validateRegister, validateLogin } = require("../utils/validators/auth");
const registerController = require("../controllers/RegisterController");
const loginController = require("../controllers/LoginController");

router.post("/register", validateRegister, registerController.register);
router.post("/login", validateLogin, loginController.login);

module.exports = router;
