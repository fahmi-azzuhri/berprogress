class Car {
  String name = "";
  void run() {
    print("Car running");
  }
}

abstract class Motorcycle extends Car {
  void stop() {
    print("motorcycle stop");
  }
}

class Vehicle implements Car, Motorcycle {
  String name = "Toyota";
  void run() {
    print("Vehicle running");
  }

  void stop() {
    print("vehicle stop");
  }
}

void main() {
  Vehicle vehicle = Vehicle();
  print(vehicle.name);
  vehicle.run();
  vehicle.stop();
}
