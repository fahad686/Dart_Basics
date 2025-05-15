
/*
🔹 2. When & Where to Use Extension Methods
✅ What is an extension?
Adds functionality to existing classes without modifying them.

Used when you want to add utility methods.



string_extensions
*/
extension CapitalizeExtension on String {
  String capitalize() {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }
}


void main() {
  String name = "ali";
  print(name.capitalize()); // Output: Ali
}
