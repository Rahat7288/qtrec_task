// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:qtec_task/constants/constants.dart';
import 'package:qtec_task/exceptions/product_exceptions.dart';
import 'package:qtec_task/services/http_error_handler.dart';

class ProductApiService {
  final http.Client httpClient;
  ProductApiService({
    required this.httpClient,
  });

  Future<int> getProductId(String productName) async {
    final Uri uri = Uri(
      scheme: 'https',
      host: pHost,
      path: '',
      queryParameters: {
        'query': productName,
      },
    );
    try {
      final http.Response response = await http.get(uri);
      if (response.statusCode != 200) {
        throw Exception(httpErrorHandler(response));
      }
      final responseBody = json.decode(response.body);

      if (responseBody.isEmpty) {
        throw ProductException('cannot get the product id of $productName');
      }
      return responseBody[0]['productId'];
    } catch (e) {
      rethrow;
    }
  }
}
