const hello = (name) => `Hello ${name}`;

console.log(hello("Fahmi"));
//1 parameter

const fullName = (firstName, lastName) => `Hello ${firstName} ${lastName}`;
console.log(fullName("Fahmi", "Azzuhri"));
//2 parameter

const api = (status, message) => ({
  status: status,
  message: message,
});

console.log(api(200, "success"));
//object

const checkName = (name) => {
  if (!name) {
    return "tidak ada nama";
  } else {
    return `Hello ${name}`;
  }
};

console.log(checkName());
console.log(checkName("Fahmi"));
