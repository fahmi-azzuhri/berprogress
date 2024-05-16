void main() {
  int? nullPrice = null;

  if (nullPrice != null) {
    print(nullPrice.toInt());
  }

  //konversi nullable
  String name = "Fahmi";
  String? nullableName = name;

  int? nullableNumber = null;
  if (nullableNumber != null) {
    int number = nullableNumber;
  }

  //default value
  String? guest = null;
  guest = "Test";
  String guestName = guest ?? "Guest";
  print(guestName);
}
