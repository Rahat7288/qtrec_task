// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:qtec_task/exceptions/product_exceptions.dart';
import 'package:qtec_task/services/http_error_handler.dart';

import 'package:qtec_task/services/product_api_services.dart';

class ProductDetailsApi {
  final ProductApiService productApiService;
  ProductDetailsApi({
    required this.productApiService,
  });

  Future getSlag(String productSlag) async {
    final Uri uri = Uri(
      scheme: 'https',
      path: '/api/product-details/',
      queryParameters: {
        'query': productSlag,
      },
    );
    try {
      final http.Response response = await http.get(uri);
      if (response.statusCode != 200) {
        throw Exception(httpErrorHandler(response));
      }
      final responseTag = json.decode(response.body);
      if (responseTag.isEmpty) {
        throw ProductException('Nopt Found');
      }
      return responseTag[0]['productSlag'];
    } catch (e) {
      rethrow;
    }
  }
}
