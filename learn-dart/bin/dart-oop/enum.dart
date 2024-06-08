import "data/enum-data.dart";

void main() {
  Customer customer = Customer("Fahmi", CustomerLevel.gold);
  print(customer.name);
  print(customer.level);
  print(CustomerLevel
      .values); //menampilkan apa aja yang ada di enum CustomerLevel
}
