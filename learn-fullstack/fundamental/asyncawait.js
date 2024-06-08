const taskPromise = new Promise((resolve, reject) => {
  resolve("task selesai"), 3000;
});

const task = async () => {
  const done = await taskPromise;
  console.log(done);
};

console.log("mulai");
task();
console.log("selesai");
