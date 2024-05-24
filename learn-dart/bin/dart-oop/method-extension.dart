class Person {
  String name = "Fahmi";
  String? address;
  final int age = 23;

  void sayHello(String paramName) {
    print('halo $paramName, perkenalkan saya $name');
  }
}

extension changePerson on Person {
  void changeName(String paramName) {
    print('halo $paramName, perkenalkan saya $name');
  }
}

void main() {
  var person =
      Person(); //definisikan variabel yg didalamnya ada method yg diubah
  person.changeName("Azzuhri"); //gunakan method baru utk memanggil nilainya
}
