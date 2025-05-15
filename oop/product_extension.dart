// -------------------------- Product Class --------------------------

/// Product class holds price and discount
class Product {
  final int price;
  final int discount;

  Product({required this.price, required this.discount});
}

// -------------------------- Extension --------------------------

/// Extension on Product to add extra functionality without changing the class
extension DiscountPrices on Product {
  int discountedPricing() {
    return price - discount;
  }
}
