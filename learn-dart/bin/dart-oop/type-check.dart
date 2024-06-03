class Employee {
  String name;
  Employee(this.name);
}

class Manager extends Employee {
  Manager(String name) : super(name);
}

class ViceManager extends Manager {
  ViceManager(String name) : super(name);
}

void sayHello(Employee employee) {
  if (employee is ViceManager) {
    //jika variabel employee adalah type data ViceManager maka buat
    ViceManager viceManager = employee
        as ViceManager; //type data ViceManager memiliki variabel viceManager yang isinya employee dikonversi ke type data ViceManager
    print(
        "Perkenalkan saya Vice Manager ${viceManager.name}"); //karena type data ViceManager mempunyai variabel viceManager jadi panggil ${viceManager.name} name diambil dari field class Employee
  } else if (employee is Manager) {
    Manager manager = employee as Manager;
    print('Perkenalkan saya Manager ${manager.name}');
  } else {
    print("Perkenalkan saya Employee ${employee.name}");
  }
}

void main() {
  sayHello(Manager("Fahmi"));
  sayHello(ViceManager("Azzuhri"));
  sayHello(Employee("Efki"));
}
