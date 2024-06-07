let done = false;

const task = new Promise((resolve, reject) => {
  if (done) {
    resolve("task berhasil diselesaikan");
  } else {
    reject("task tidak dapat diselesaikan");
  }
});

task
  .then((response) => {
    console.log(response);
  })
  .catch((response) => console.log(response));
