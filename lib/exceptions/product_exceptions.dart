class ProductException implements Exception {
  String message;
  ProductException([this.message = 'something went wring']) {
    message = 'Product Exception: $message';
  }

  @override
  String toString() {
    return message;
  }
}
