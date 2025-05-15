import 'animal_classes.dart';
import 'product_extension.dart';

void main() {
  // Creating a Dog object and calling its methods
  var dog = Dog();
  dog.drinking();  // Abstract method implemented in Dog
  dog.running();   // Concrete method inherited from Animal

  // Creating a Cat object and calling its methods
  var cat = Cat();
  cat.drinking();  // Abstract method implemented in Cat
  cat.running();   // Concrete method also implemented in Cat

  // Checking extension method on Product class
  Product product = Product(price: 140, discount: 20);

  // Calling the extension method without changing the original Product class
  print('Get discount without changing in class: ${product.discountedPricing()}');
}
