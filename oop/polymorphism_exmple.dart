
/*🔹 4. Polymorphism in Dart
✅ What is polymorphism?
One name, many forms.

Same method name behaves differently in different contexts.

1️⃣ Compile-time Polymorphism (Method Overloading)
❌ Dart doesn’t support method overloading directly (like in Java), but you can achieve similar behavior with optional parameters:

*/

class Printer {
  void printMessage([String? message]) {
    print(message ?? 'Default message');
  }
}



//2️⃣ Run-time Polymorphism (Method Overriding)
class Animal {
  void speak() {
    print("Animal speaks");
  }
}

class Dog extends Animal {
  @override
  void speak() {
    print("Dog barks");
  }
}

class Cat extends Animal {
  @override
  void speak() {
    print("Cat meows");
  }
}

// Runtime polymorphism
void makeSound(Animal animal) {
  animal.speak();
}

void main() {
  makeSound(Dog()); // Dog barks
  makeSound(Cat()); // Cat meows
}
