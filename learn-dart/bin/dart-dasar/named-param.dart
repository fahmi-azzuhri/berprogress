void main() {
  sayHello(firstName: "Fahmi", lastName: "Azzuhri");
  sayHello(lastName: "Azzuhri", firstName: "Fahmi");
  sayHello(firstName: "Fahmi");
  sayHello(lastName: "Azzuhri");
  sayHello();
}

void sayHello({String? firstName, String? lastName}) {
  print("hello $firstName, $lastName");
}

//jika tidak pengen null, ganti jadi = default value
