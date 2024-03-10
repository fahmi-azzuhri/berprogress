const fs = require("fs");

const readableStream = fs.createReadStream("./notes.txt", {
  highWaterMark: 16,
});

readableStream.on("readable", () => {
  try {
    console.log(`[${readableStream.read()}]`);
  } catch (error) {
    console.log(error);
  }
});

readableStream.on("end", () => {
  console.log("Teks selesai dibaca");
});
