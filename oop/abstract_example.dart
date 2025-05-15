// Defines an abstract class with one abstract method and one regular method
abstract class Vehicle {
  void start(); // Abstract method
  void stop() {
    print('Vehicle stopped');
  }
}

// Concrete class that extends the abstract class and implements abstract method
class Car extends Vehicle {
  @override
  void start() {
    print('Car started');
  }
}
