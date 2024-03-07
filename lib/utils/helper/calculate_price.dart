class ThCalculatePricing {
  // Calculate the price based on discount and shipping 
  static double calculateTotalPrice(double productPrice, String location, double discountPercentage) {
    double discountedPrice = applyDiscount(productPrice, discountPercentage);
    double shippingCost = getShippingCost(location);
    double totalPrice = discountedPrice + shippingCost;
    return totalPrice;
  }

  // Calculate Shipping Cost 
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  // Calculate Discount
  static double applyDiscount(double productPrice, double discountPercentage) {
    double discountedPrice = productPrice - (productPrice * (discountPercentage / 100));
    return discountedPrice;
  }

  // Get Discount Rate for Product
  static double getDiscountRateForProduct(double productPrice) {
    //this for the discount rate for individal product i will add it later
    // implement logic to get the discount rate for the given product
    // For example, query a database or API to retrieve the discount rate based on the product's ID or category
    return 0.05; // example discount rate of 5%
  }

  // Get Shipping Cost for Location
  static double getShippingCost(String location) {
    //this is for shipping cost for diff location so it might change or i can add the fixed rate
    // i will lookup the shipping cost for the given location from shipping cost database or API
    // Return the appropriate shipping cost
    return 5.00; // example shipping cost of $5
  }

  // Sum all cart value and return total amount
  //static double calculateCartTotal(CartModel cart) {
  //  return cart.items.map((e) => e.price).fold(0, (previousprice, currentPrice) => previousprice + (currentPrice ?? 0));
 // }
}
