import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/product_model.dart';

class ApiService {
  Future<ProductModel> getAllData(String productName) async {
    try {
      http.Response response = await http.get(Uri.parse(
          'https://panel.supplyline.network/api/product/search-suggestions/?limit=10&offset=10&search=$productName'));

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        print(responseData);
        ProductModel productModel = ProductModel.fromJson(responseData);

        return productModel;
      } else {
        throw Future.error(
            'Unable to get the data. status code: ${response.statusCode}');
      }
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> getProductDetails(String slag) async {
    try {
      http.Response response = await http.get(Uri.parse(''));
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
