const http = require("http");
const port = 3000;
const host = "127.0.0.1";

const requestListener = (request, response) => {
  response.setHeader("Content-Type", "text/html");
  response.statusCode = 200;
  response.end("Hello World!");
  const { method } = request;

  if (method === GET) {
    //method ketika get
  }

  if (method === POST) {
    //method ketika post
  }
};

const server = http.createServer(requestListener);

server.listen(port, host, () => {
  console.log(`Server is running on http://${host}:${port}`);
});
