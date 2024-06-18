const express = require("express");
const router = express.Router();

const { validateRegister, validateLogin } = require("../utils/validators/auth");
const registerController = require("../controllers/RegisterController");
const loginController = require("../controllers/LoginController");
const userController = require("../controllers/UserController");

const verifyToken = require("../middlewares/auth");

router.post("/register", validateRegister, registerController.register);
router.post("/login", validateLogin, loginController.login);
router.get("/admin/users", verifyToken, userController.findUser);

module.exports = router;
