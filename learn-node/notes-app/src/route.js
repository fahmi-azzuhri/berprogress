const {
  addNoteHandler,
  getAllNotesHandler,
  getIdHandler,
  editNoteByIdHandler,
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
  {
    method: "PUT",
    path: "/notes/{id}",
    handler: editNoteByIdHandler,
  },
];

module.exports = route;
