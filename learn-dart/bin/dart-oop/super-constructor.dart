class Manager {
  String name;
  int age;
  Manager(this.name, this.age);
}

class ViceManager extends Manager {
  ViceManager(name, age) : super(name, age) {
    print("Super constructor dijalankan");
  }
}

void main() {
  var manager = Manager("Fahmi", 20);
  print(manager.name);

  var viceManager =
      ViceManager("FahmiAzzuhri", 25); //redirecting ke constructor
  print(viceManager.name);
  print(viceManager.age);
}
