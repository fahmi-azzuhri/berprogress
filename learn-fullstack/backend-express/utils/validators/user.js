const { body } = require("express-validators");

const prisma = require("../../prisma/client");

const validateLogin = [
  body("name").notEmpty().withMessage("name is required"),
  body("email")
    .notEmpty()
    .withMessage("email is required")
    .custom(async (value, { req }) => {
      if (!value) {
        throw new Error("email is required");
      }

      const user = await prisma.user.findUnique({ where: { email: value } });
      if (user && user.id !== Number(req.params.id)) {
        throw new Error("email already exist");
      }
      return true;
    }),
  body("password")
    .isLength({ min: 6 })
    .withMessage("password must be at least 6 character long"),
];

module.exports = validateLogin;
