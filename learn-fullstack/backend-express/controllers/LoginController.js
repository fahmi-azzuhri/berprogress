const express = require("express");
const jwt = require("jsonwebtoken");
const bcrypt = require("bcryptjs");
const { validationResult } = require("express-validator");

const prisma = require("../prisma/client");

const login = async (req, res) => {
  const error = validationResult(req);
  if (!error.isEmpty()) {
    return res.status(422).json({
      success: false,
      message: "validation error",
      error: error.array(),
    });
  }

  try {
    const user = await prisma.user.findFirst({
      where: { email: req.body.email },
      select: {
        id: true,
        name: true,
        email: true,
        password: true,
      },
    });
    if (!user)
      return res.status(404).json({
        success: false,
        message: "user not found",
      });

    const validPassword = await bcrypt.compare(
      req.body.password,
      user.password
    );
    if (!validPassword)
      return res.status(401).json({
        success: false,
        message: "invalid password",
      });

    const token = jwt.sign({ id: user.id }, process.env.JWT_SECRET, {
      expiresIn: "1h",
    });

    const { password, ...userWithoutPassword } = user;

    res.status(201).json({
      success: true,
      message: "login successfully",
      data: {
        user: userWithoutPassword,
        token: token,
      },
    });
  } catch (error) {
    return res.status(500).json({
      success: false,
      message: "internal server error",
    });
  }
};

module.exports = { login };
