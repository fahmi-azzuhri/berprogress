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
  {
    method: "GET",
    path: "/hello/{name?}",
    handler: (request, h) => {
      const { name = "stranger" } = request.params;
      return `Hello, ${name}`;
    },
  },
];

module.exports = routes;
