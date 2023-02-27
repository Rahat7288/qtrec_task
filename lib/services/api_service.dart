import 'dart:convert';
import '../models/product_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<ProductModel> getData() async {
    // List<ProductModel> productData = [];

    try {
      http.Response response = await http.get(Uri.parse(
          'https://panel.supplyline.network/api/product/search-suggestions/?limit=10&offset=10&search=rice'));

      // debugPrint(response.body);
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        print(responseData);
        return ProductModel.fromJson(responseData);
      } else {
        return Future.error('error');
      }
    } catch (e) {
      rethrow;
    }
  }
  // function to get slag

  Future<String> getSlag(String productName) async {
    final Uri uri = Uri(
      scheme: 'https',
      host: 'https://panel.supplyline.network/',
      path:
          '/api/product/search-suggestions/?limit=10&offset=10&search=$productName',
      queryParameters: {
        'query': productName,
      },
    );

    try {
      final http.Response response = await http.get(uri);

      if (response.statusCode == 200) {
        final resultData = json.decode(response.body);
        final Results results = Results.fromJson(resultData);
        return results.slug;
      } else {
        return Future.error('error');
      }
    } catch (e) {
      rethrow;
    }
  }

  // function for product details api

  Future<Results> productDetails(String slag) async {
    final Uri uri = Uri(
      scheme: 'https',
      host: 'https://panel.supplyline.network/',
      path: '/api/product-details/$slag/',
    );

    try {
      final http.Response response = await http.get(uri);

      if (response.statusCode == 200) {
        final productInfo = json.decode(response.body);
        final Results results = Results.fromJson(productInfo);
        return results;
      } else {
        return Future.error('error');
      }
    } catch (e) {
      rethrow;
    }
  }
}
