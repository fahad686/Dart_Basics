// Base class (Parent)
class Animal {
  void sound() {
    print('Animal makes sound');
  }
}

// Child class inherits from Animal
class Dog extends Animal {
  void bark() {
    print('Dog barks');
  }
}


//-----------Types of Inheritance in Dart

//❌ Dart does not support multiple inheritance directly (i.e., class C extends A, B).

//1️⃣ Single Inheritance
class A {
  void printA() => print("Class A");
}

class B extends A {
  void printB() => print("Class B");
}


//2️⃣ Multi-level Inheritance
class E {
  void printA() => print("Class A");
}

class F extends E {
  void printB() => print("Class B");
}

class g extends F {
  void printC() => print("Class C");
}



//3️⃣ Hierarchical Inheritance
class L {
  void printL() => print("Class L");
}

class O extends L {
  void printO() => print("Class O");
}

class Q extends L {
  void printQ() => print("Class Q");
}
