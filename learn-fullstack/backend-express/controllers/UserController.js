const express = require("express");
const prisma = require("../prisma/client");

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

module.exports = { findUser };
