const { addNoteHandler, getAllNotesHandler } = require("./handler");

const route = [
  {
    method: "POST",
    path: "/notes",
    handler: addNoteHandler,
  },
  {
    method: "GET",
    path: "/notes",
    handler: getAllNotesHandler,
  },
];

module.exports = route;
