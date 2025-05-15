
/*
.

🔷 . Mixin in Dart
A mixin allows you to reuse methods and properties in multiple classes without using inheritance.

✅ Use-case:
Add behaviors like logging, animation, or validation to multiple widgets or classes.

*/

mixin Logger {
  void log(String message) {
    print('[LOG]: $message');
  }
}

class FileManager with Logger {
  void saveFile() {
    log("File saved successfully!");
  }
}

void main() {
  var file = FileManager();
  file.saveFile(); // Output: [LOG]: File saved successfully!

  //multiple mixin
  print('\nMultiple mixin example\n');
    var duck = Duck();
  duck.fly();  // Flying
  duck.swim(); // Swimming
}


//🧪 Example 2: Multiple Mixins
mixin Fly {
  void fly() => print("Flying");
}

mixin Swim {
  void swim() => print("Swimming");
}

class Duck with Fly, Swim {}