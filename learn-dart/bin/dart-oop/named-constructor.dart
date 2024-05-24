class Person {
  String name = "Fahmi";
  String? address;
  final int age = 23;

  Person(this.name, this.address);
  Person.justName(this.name);
  Person.justAddress(this.address);
}

void main() {
  var person = Person("Amel", "Bekasi");
  print(person.name);
  print(person.address);

  var personJustName = Person.justName("Efki");
  print(personJustName.name);
  print(personJustName.address); //null

  var personJustAddress = Person.justAddress("Jakarta");
  print(personJustAddress.name);
  print(personJustAddress.address);
}
