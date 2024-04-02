import { Category, Product } from "../src/type-alias";

describe("type alias", () => {
  it("type alias", () => {
    const category: Category = {
      id: 1,
      name: "handphone",
      description: "samsung m22 128gb",
    };

    const product: Product = {
      id: 1,
      name: "samsung m22 128gb",
      price: 200000000,
      category: category,
    };

    console.log(category);
    console.log(product);
  });
});
