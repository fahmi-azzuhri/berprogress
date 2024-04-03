import { Customer, CustomerType } from "../src/enum";

describe("enum", () => {
  it("enum ts", () => {
    const customer: Customer = {
      id: 1,
      name: "Fahmi",
      type: CustomerType.SILVER,
    };
    console.log(customer);
  });
});
