import 'dart:convert';

import 'package:flutter/material.dart';

import '../models/product_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<ProductModel> getData() async {
    // List<ProductModel> productData = [];

    try {
      http.Response response = await http.get(Uri.parse('https://panel.supplyline.network/api/product/search-suggestions/?limit=10&offset=10&search=rice'));

      print(response.body);
      if (response.statusCode == 200) {

        final responseData = json.decode(response.body);

        // for (var element in responseData) {
        //   ProductModel productModel = ProductModel.fromJson(element);
        //   debugPrint("product model $productModel");
        //   productData.add(productModel);
        // }
        return ProductModel(status: responseData['status'], data: responseData['data'].fromJson);
      } else {
        return Future.error('error');
      }
    } catch (e) {
      rethrow;
    }
  }
}
