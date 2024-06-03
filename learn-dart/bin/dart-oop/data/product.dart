class Product {
  int? id;
  String? name;
  int? _quantity;

  int? _getQuantity() => _quantity;
}

void main() {
  Product product = Product();
  product.id = 1;
  product.name = "Laptop";
  product._quantity = 10; //bisa diakses karena masih 1 file
  product._getQuantity(); //bisa diakses karena masih 1 file
}
