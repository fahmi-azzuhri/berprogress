class President {
  String? name;
  String gender = "Male";

  void sayHello(String name) {
    print(
        'Halo $name, perkenalkan nama saya ${this.name}. ${this.name} adalah presiden ${this.gender}');
  }
}

class VicePresident extends President {
  VicePresident() {
    this.gender = "Female";
  }
}

void main() {
  var president = President();
  president.name = "Fahmi Azzuhri";
  president.sayHello("Amel");

  var vp = VicePresident();
  vp.name = "Efki";
  vp.sayHello("Amel");
}
