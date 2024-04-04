describe("undefined", () => {
  it("should be undefined", () => {
    function sayHello(name?: string) {
      if (name) {
        console.log(`hello ${name}`);
      } else {
        console.log(`hello`);
      }
    }
    sayHello("Fahmi");
    const name: string | undefined = undefined;
    sayHello(name);
  });
});
