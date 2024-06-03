import "data/product.dart";

void main() {
  Product product = Product();
  product.id = 1;
  product.name = "Laptop";
  // product._quantity = 10; error karena gabisa diakses dari file lain
}
