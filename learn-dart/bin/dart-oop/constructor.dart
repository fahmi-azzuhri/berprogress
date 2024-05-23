class Person {
  String name = "Fahmi";
  String? address;
  final int age = 23;

  Person(String paramName, String paramAddress) {
    name = paramName;
    address = paramAddress;
  }
}

void main() {
  var person = Person("Amel", "Bekasi");
  print(person.name);
  print(person.address);
}
