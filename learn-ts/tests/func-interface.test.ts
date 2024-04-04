import { AddFunction } from "../src/func-interface";

describe("function interface", () => {
  it("should function interface", () => {
    const add: AddFunction = (value1: number, value2: number): number => {
      return value1 + value2;
    };

    console.log(add(8, 2));
  });
});
