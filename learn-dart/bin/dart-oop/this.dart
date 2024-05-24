class Person {
  String name = "Fahmi";
  String? address;
  final int age = 23;

  // Person(String name, String address) {
  //   name = name;
  //   address = address;
  // }
  // ini kena variable shadowing

  Person(String name, String address) {
    //supaya ga kena variable shadowing berikan this
    //jadi this yang ada di method mengakses field yg ada di class Person
    this.name = name;
    this.address = address;
  }
}

void main() {
  var person = Person("Amel", "Bekasi");
  print(person.name);
  print(person.address);
}
