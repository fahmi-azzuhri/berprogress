class Person {
  String name = "Ini Person";
  void sayHello(String name) {
    print('halo $name, perkenalkan saya ${this.name}');
  }
}

class otherPerson extends Person {
  String name = "Ini Other Person";
}

void main() {
  var person = Person();
  person.sayHello("Amel"); //ini person
  var person2 = otherPerson();
  person2.sayHello("Amel"); //ini other person
}
