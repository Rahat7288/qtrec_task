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
}
