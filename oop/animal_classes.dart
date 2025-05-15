// -------------------------- Abstract Class --------------------------

/// Abstract class Animal defines a blueprint for all animal types.
/// - `drinking()` is abstract (must be implemented by child classes).
/// - `eating()` and `running()` are regular methods (optional to override).
abstract class Animal {
  // Abstract method
  void drinking();

  // Regular method (has body)
  void eating() {
    print('eating');
  }

  // Regular method (has body)
  void running() {
    print('running');
  }
}

// -------------------------- Dog Class --------------------------

/// The Dog class extends Animal, so it must implement all abstract methods.
class Dog extends Animal {
  @override
  void drinking() {
    print('Dog drinking water');
  }
}

// -------------------------- Cat Class --------------------------

/// The Cat class implements Animal, so it must implement **all** methods,
/// including both abstract and concrete ones.
class Cat implements Animal {
  @override
  void drinking() {
    print('Cat drinking milk');
  }

  @override
  void eating() {
    // You can keep it empty or define new behavior
  }

  @override
  void running() {
    // You can keep it empty or define new behavior
  }
}
