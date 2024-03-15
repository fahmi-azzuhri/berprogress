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

  const isSuccess = filter.notes((note) => note.id === id);

  if (isSuccess) {
    const response = h.response({
      status: "success",
      message: "berhasil menambahkan data",
      data: {
        noteId: id,
      },
    });
    response.code(201);
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

module.exports = { addNoteHandler };
