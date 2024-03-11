const routes = [
  {
    method: "GET",
    path: "/",
    handler: (request, h) => {
      return "Ini Home";
    },
  },
  {
    method: "POST",
    path: "/about",
    handler: (request, h) => {
      return "Ini About";
    },
  },
];

module.exports = routes;
