//destructuring array

const array = ["Fahmi", "Azzuhri", "Efki"]; //buat array dulu

const [firstName, lastName, middleName] = array; //inisialisasi array dari variabel array

console.log(firstName);
console.log(middleName);
console.log(lastName);

//destructuring object

const obj = {
  name: "Fahmi Azzuhri Efki",
  gender: "Laki laki",
};

const { name, gender } = obj; //inisialisasi object dari variabel obj

console.log(name);
console.log(gender);

//restructuring
const fullName = "Fahmi Azzuhri";
const age = 20;
const objc = { fullName, age };

console.log(objc);
