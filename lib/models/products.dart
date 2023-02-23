// ignore_for_file: public_member_api_docs, sort_constructors_first

class Product {
  final String productImage,
      productName,
      productPrice,
      prevPrice,
      sellPrice,
      profitPrice,
      description;
  final int productId, stock;
  // bool stockTag = false;
  Product({
    required this.stock,
    required this.productImage,
    required this.productName,
    required this.productPrice,
    required this.prevPrice,
    required this.sellPrice,
    required this.profitPrice,
    required this.description,
    required this.productId,
  });

  @override
  String toString() => 'Product(stock: $stock,)';
}

List<Product> products = [
  Product(
    stock: 100,
    productImage: 'assets/images/img1.png',
    productName: 'Lays Classic Family Chips',
    productPrice: '৳ 20.00',
    prevPrice: '৳ 22.00',
    sellPrice: '25.00',
    profitPrice: '৳ 5.00',
    description:
        'blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah',
    productId: 1,
  ),
  Product(
    stock: 100,
    productImage: 'assets/images/img1.png',
    productName: 'Lays Classic Family Chips',
    productPrice: '৳ 20.00',
    prevPrice: '৳ 22.00',
    sellPrice: '25.00',
    profitPrice: '৳ 5.00',
    description:
        'blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah',
    productId: 2,
  ),
  Product(
    stock: 100,
    productImage: 'assets/images/img1.png',
    productName: 'Lays Classic Family Chips',
    productPrice: '৳ 20.00',
    prevPrice: '৳ 22.00',
    sellPrice: '25.00',
    profitPrice: '৳ 5.00',
    description:
        'blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah',
    productId: 3,
  ),
  Product(
    stock: 100,
    productImage: 'assets/images/img1.png',
    productName: 'Lays Classic Family Chips',
    productPrice: '৳ 20.00',
    prevPrice: '৳ 22.00',
    sellPrice: '25.00',
    profitPrice: '৳ 5.00',
    description:
        'blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah',
    productId: 4,
  ),
  Product(
    stock: 100,
    productImage: 'assets/images/img1.png',
    productName: 'Lays Classic Family Chips',
    productPrice: '৳ 20.00',
    prevPrice: '৳ 22.00',
    sellPrice: '25.00',
    profitPrice: '৳ 5.00',
    description:
        'blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah ',
    productId: 5,
  ),
  Product(
    stock: 100,
    productImage: 'assets/images/img1.png',
    productName: 'Lays Classic Family Chips',
    productPrice: '৳ 20.00',
    prevPrice: '৳ 22.00',
    sellPrice: '25.00',
    profitPrice: '৳ 5.00',
    description:
        'blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah',
    productId: 6,
  ),
  Product(
    stock: 100,
    productImage: 'assets/images/img1.png',
    productName: 'Lays Classic Family Chips',
    productPrice: '৳ 20.00',
    prevPrice: '৳ 22.00',
    sellPrice: '25.00',
    profitPrice: '৳ 5.00',
    description:
        'blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah',
    productId: 7,
  ),
  Product(
    stock: 100,
    productImage: 'assets/images/img1.png',
    productName: 'Lays Classic Family Chips',
    productPrice: '৳ 20.00',
    prevPrice: '৳ 22.00',
    sellPrice: '25.00',
    profitPrice: '৳ 5.00',
    description:
        'blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah',
    productId: 8,
  ),
];
