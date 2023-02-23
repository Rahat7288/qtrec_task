// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';

class ProductModel extends Equatable {
  final int productId, stock;
  final String productImage,
      slag,
      productName,
      brandName,
      distributorName,
      description;
  final double buyingPrice, sellingPrice, discountPrice, profit;
  ProductModel({
    required this.slag,
    required this.stock,
    required this.profit,
    required this.productId,
    required this.productImage,
    required this.productName,
    required this.brandName,
    required this.distributorName,
    required this.description,
    required this.buyingPrice,
    required this.sellingPrice,
    required this.discountPrice,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
        slag: json['slag'],
        stock: json['stock'],
        profit: json['profit'],
        productId: json['product_id'],
        productImage: json['product_image'],
        productName: json['product_name'],
        brandName: json['brand_name'],
        distributorName: json['distributor_name'],
        description: json['description'],
        buyingPrice: json['buying_price'],
        sellingPrice: json['selling_price'],
        discountPrice: json['discount_price']);
  }

  factory ProductModel.initial() => ProductModel(
      slag: '',
      stock: 10,
      profit: 5.0,
      productId: 1,
      productImage: 'assets/images/img1.png',
      productName: 'Lays Classic Family Chips',
      brandName: 'something',
      distributorName: 'distribution',
      description: 'description',
      buyingPrice: 20.0,
      sellingPrice: 22.0,
      discountPrice: 1.0);

  @override
  List<Object> get props {
    return [
      slag,
      stock,
      profit,
      productId,
      productImage,
      productName,
      brandName,
      distributorName,
      description,
    ];
  }

  @override
  bool get stringify => true;
}
