/**
 * TODO:
 * Buatlah program untuk membaca teks input.txt dan menuliskannya ulang pada berkas output.txt
 * menggunakan teknik readable stream dan writable stream.
 */

const fs = require("fs");

const readableStream = fs.createReadStream("./input.txt", {
  highWaterMark: 15,
});

const writableStream = fs.createWriteStream("./output.txt");

readableStream.on("data", (chunk) => {
  try {
    if (chunk !== null) {
      writableStream.write(chunk + "\n");
    }
  } catch (err) {
    console.log(err);
  }
});

readableStream.on("end", () => {
  console.log("Teks selesai dibaca");
  writableStream.end();
});

writableStream.on("finish", () => {
  console.log("Teks selesai ditulis");
});
