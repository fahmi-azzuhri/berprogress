class Person {
  String name = "Fahmi";
  String? address;
  final int age = 23;

  Person(this.name, this.address); //langsung aja pake this
}

void main() {
  var person = Person("Amel", "Bekasi");
  print(person.name);
  print(person.address);
}
