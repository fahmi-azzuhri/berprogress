const express = require("express");
const prisma = require("../prisma/client");

const { validationResult } = require("express-validator");
const bcrypt = require("bcryptjs");

const findUser = async (req, res) => {
  try {
    const user = await prisma.user.findMany({
      select: {
        id: true,
        name: true,
        email: true,
      },
      orderBy: {
        id: "desc",
      },
    });

    res.status(200).send({
      success: true,
      message: "get all user successfully",
      data: user,
    });
  } catch (error) {
    res.status(500).send({
      success: false,
      message: "internal server error",
    });
  }
};

const createUser = async (req, res) => {
  const error = validationResult(req);
  if (!error.isEmpty()) {
    return res.status(422).json({
      success: false,
      message: "validation error",
      error: error.array(),
    });
  }
  const hashedPassword = await bcrypt.hash(req.body.password, 10);

  try {
    const user = await prisma.user.create({
      data: {
        name: req.body.name,
        email: req.body.email,
        password: hashedPassword,
      },
    });
    res.status(201).send({
      success: true,
      message: "create user successfully",
      data: user,
    });
  } catch (error) {
    return res.status(500).json({
      success: false,
      message: "internal server error",
    });
  }
};

const findUserById = async (req, res) => {
  const { id } = req.params;

  try {
    const user = await prisma.user.findMany({
      where: {
        id: Number(id),
      },
      select: {
        id: true,
        name: true,
        email: true,
      },
    });
    res.status(201).send({
      success: true,
      message: `get user by id : ${id} `,
      data: user,
    });
  } catch (error) {
    res.status(500).send({
      success: false,
      message: "internal server error",
    });
  }
};

const updateUser = async (req, res) => {
  const { id } = req.params;
  const error = validationResult(req);
  if (!error.isEmpty()) {
    return res.status(422).json({
      success: false,
      message: "validation error",
      error: error.array(),
    });
  }

  const hashedPassword = await bcrypt.hash(req.body.password, 10);

  try {
    const user = await prisma.user.update({
      where: { id: Number(id) },
      data: {
        name: req.body.name,
        email: req.body.password,
        password: hashedPassword,
      },
    });
    res.status(201).send({
      success: true,
      message: "user updated successfully",
      data: user,
    });
  } catch (error) {
    res.status(500).send({
      success: false,
      message: "internal server error",
    });
  }
};

module.exports = { findUser, createUser, findUserById, updateUser };
