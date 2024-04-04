import { Seller } from "../src/interface";

describe("interface", () => {
  it("interface should be", () => {
    const seller: Seller = {
      id: 1,
      name: "fahmi",
      address: "bekasi",
    };

    console.log(seller);
    // seller.address("jakarta"); nah ini bakalan error karena readonly
  });
});
