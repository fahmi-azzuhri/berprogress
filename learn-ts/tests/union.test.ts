describe("union type", () => {
  it("union", () => {
    let sample: string | number | boolean = "Fahmi";
    console.log(sample);
    sample = 100;
    console.log(sample);
    sample = true;
    console.log(sample);
  });

  it("union type of", () => {
    const process = (value: number | string | boolean) => {
      if (typeof value === "string") {
        return value.toUpperCase();
      } else if (typeof value === "number") {
        return value + 1;
      } else {
        return !value;
      }

      expect(process("hello")).toBe("HELLO");
      expect(process(100)).toBe(101);
      expect(process(false)).toBe(true);
    };
  });
});
