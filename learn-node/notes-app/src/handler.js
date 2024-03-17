const { nanoid } = require("nanoid");
const notes = require("./notes");
const addNoteHandler = (request, h) => {
  const { title, tags, body } = request.payload;
  const id = nanoid(16);
  const createAt = new Date().toISOString();
  const updatedAt = createAt;

  const newNote = {
    title,
    tags,
    body,
    id,
    createAt,
    updatedAt,
  };

  notes.push(newNote);

  const isSuccess = notes.filter((note) => note.id === id).length > 0;

  if (isSuccess) {
    const response = h.response({
      status: "success",
      message: "berhasil menambahkan data",
      data: {
        noteId: id,
      },
    });
    response.code(201);
    response.header("Access-Control-Allow-Origin", "*");
    return response;
  } else {
    const response = h.response({
      status: "fail",
      message: "data gagal di tambahkan",
    });
    response.code(500);
    return response;
  }
};

const getAllNotesHandler = () => ({
  status: "success",
  data: {
    notes,
  },
});

const getIdHandler = (request, h) => {
  const { id } = request.params;

  const note = notes.filter((n) => n.id === id)[0];

  if (note !== undefined) {
    return {
      status: "success",
      data: {
        note,
      },
    };
  }
  const response = h.response({
    status: "fail",
    message: "catatan tidak ada",
  });
  response.code(404);
  return response;
};

const editNoteByIdHandler = (request, h) => {
  const { id } = request.params;
  const { title, tags, body } = request.payload;
  const updatedAt = new Date().toISOString();

  const index = notes.findIndex((note) => note.id === id);

  if (index !== -1) {
    notes[index] = {
      ...notes[index],
      title,
      tags,
      body,
      updatedAt,
    };

    const response = h.response({
      status: "success",
      message: "catatan berhasil diperbarui",
    });
    response.code(200);
    return response;
  } else {
    const response = h.response({
      status: "fail",
      message: "Gagal memperbarui catatan. Id yang dimaksud tidak ditemukan",
    });
    response.code(404);
    return response;
  }
};

module.exports = {
  addNoteHandler,
  getAllNotesHandler,
  getIdHandler,
  editNoteByIdHandler,
};