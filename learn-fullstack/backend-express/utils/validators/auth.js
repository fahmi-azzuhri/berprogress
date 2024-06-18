const { body } = require("express-validator");

const prisma = require("../../prisma/client");

const validateRegister = [
  body("name").notEmpty().withMessage("name is required"),
  body("email")
    .notEmpty()
    .withMessage("email invalid")
    .custom(async (value) => {
      if (!value) {
        throw new Error("email is required");
      }
      const user = await prisma.user.findUnique({ where: { email: value } });
      if (user) {
        throw new Error("email already exist");
      }
      return true;
    }),
  body("password")
    .isLength({ min: 6 })
    .withMessage("password must be at least 6 character long"),
];

const validateLogin = [
  body("email").notEmpty().withMessage("email is required"),
  body("password")
    .isLength({ min: 6 })
    .withMessage("password must be at least 6 character long"),
];

module.exports = {
  validateRegister,
  validateLogin,
};
