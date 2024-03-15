const { addNoteHandler } = require("./handler");

const route = [
  {
    method: "POST",
    path: "/notes",
    handler: (request, h) => {
      addNoteHandler;
    },
  },
];

module.exports = route;
