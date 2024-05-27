class President {
  String? name;
  String gender = "Male";

  void sayHello(String name) {
    print(
        'Halo $name, perkenalkan nama saya ${this.name}, Saya adalah President');
  }
}

class VicePresident extends President {
  void sayHello(String name) {
    print('Halo $name, perkenalkan nama saya ${this.name}, Saya adalah VP');
  } //di deklarasikan ulang, tapi harus sama dengan parent class
}

void main() {
  var president = President();
  president.name = "Fahmi Azzuhri";
  president.sayHello("Amel");

  var vp = VicePresident();
  vp.name = "Efki";
  vp.sayHello("Amel");
}
