class Person {
  String name = "Ini Person";
  void sayHello(String name) {
    print('halo $name, perkenalkan saya ${this.name}');
  }

  int age() {
    return 20;
  }
}

class otherPerson extends Person {
  String name = "Ini Other Person";
  int age() {
    return 13;
  }

  int ageParent() {
    //buat method baru utk mengakses method yg ada di parent
    return super.age(); //gunakan super, lalu diikuti method yg ada di parent
  }
}

void main() {
  var getOtherPerson = otherPerson();
  print(getOtherPerson.ageParent());
}
