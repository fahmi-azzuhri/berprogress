void main() {
  sayHello("Fahmi", "Azzuhri");
  sayHello("Fahmi");
}

void sayHello(String firstName, [String? lastName]) {
  print('Hello $firstName, $lastName');
}

//kalo null nya pengen hilang, ganti jadi = default value

//contoh
//void sayHello(String firstName, [String lastName = '']) {
//print('Hello $firstName, $lastName');
//}
