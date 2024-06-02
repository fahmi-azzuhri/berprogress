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
  print("halo,perkealkan saya ${employee.name} ");
}

void main() {
  // Employee employee = Employee("Fahmi");
  // print(employee.name);
  // employee = Manager("Azzuhri");
  // print(employee.name);
  // employee = ViceManager("Efki");
  // print(employee.name); tanpa method sayHello

  sayHello(Employee("Fahmi"));
  sayHello(Manager("Azzuhri"));
  sayHello(ViceManager("Efki"));
}
