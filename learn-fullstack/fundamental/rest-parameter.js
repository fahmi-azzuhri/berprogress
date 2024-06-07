function sum(...rest) {
  let total = 0;
  for (let number of rest) {
    total += number;
  }
  return total;
}

console.log(sum(1, 2, 3, 4, 5, 6, 7, 8, 9, 10));

//digabung dengan parameter lainnya
// function sum(initVal, ...rest) {
//   let sum = 0;
//   for (let number of rest) sum += number;
//   return initVal + sum;
// }

// let x = sum(10, 5);
