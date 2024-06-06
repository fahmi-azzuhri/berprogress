import "data/category_equals.dart";

void main() {
  Category category = Category(1, "Nasi Ayam Bakar");
  Category category2 = Category(1, "Nasi Ayam Bakar");
  print(category == category2);
}
