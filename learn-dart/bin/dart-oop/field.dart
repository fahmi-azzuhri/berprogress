class Person {
  String name = "Fahmi";
  String? address;
  final int age = 23;
}

void main() {
  var person1 = Person();
  print(person1.name); //mengambil nilai field
  print(person1.age);
  person1.name = "Azzuhri"; //manipulasi field
  print(person1.name);
}
