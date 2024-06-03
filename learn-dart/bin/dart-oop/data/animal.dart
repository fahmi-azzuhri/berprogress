abstract class Animal {
  String? name;
  void sound(); //buat method kosong
}

class Cat extends Animal {
  void sound() {
    //override method kosong tadi kemudian diisi
    print("Suara $name bunyi nya meow");
  }
}
