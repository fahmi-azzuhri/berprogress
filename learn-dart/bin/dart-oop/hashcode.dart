import "data/category_hashcode.dart";

void main() {
  Category category = Category(1, "Nasi Ayam Bakar");
  Category category2 = Category(1, "Nasi Ayam Bakar");
  print(category == category2);
  print(category.hashCode);
  print(category2.hashCode);
}
