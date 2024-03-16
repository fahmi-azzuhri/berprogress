const {
  addNoteHandler,
  getAllNotesHandler,
  getIdHandler,
} = require("./handler");

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
  {
    method: "GET",
    path: "/notes/{id}",
    handler: getIdHandler,
  },
];

module.exports = route;
