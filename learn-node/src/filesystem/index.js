const fs = require("fs");

const fileReadCallback = (error, data) => {
  if (error) {
    console.log("Gagal membaca data");
    return;
  } else {
    console.log(data);
  }
};

fs.readFile("./notes.txt", "utf8", fileReadCallback);
