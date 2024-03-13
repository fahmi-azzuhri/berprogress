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
      const { lang } = request.query;
      if (lang === "id") {
        return `Hai, ${name}!`;
      }
    },
  },
  {
    method: "POST",
    path: "/login",
    handler: (request, h) => {
      const { username, password } = request.payload;
      return `Welcome ${username}`;
    },
  },
];

module.exports = routes;
