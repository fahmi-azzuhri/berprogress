class Person {
  String name = "Fahmi";
  String? address;
  final int age = 23;

  void sayHello(String paramName) {
    print('halo $paramName, perkenalkan saya $name');
  }
}

void main() {
  var person1 = Person();
  person1.sayHello('Azzuhri'); //mengakses method
}
