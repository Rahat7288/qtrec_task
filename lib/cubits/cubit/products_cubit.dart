import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models/product_model.dart';
import '../../services/api_service.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  // Future<List<Results>>? results;
  late ProductModel productModel;
  ApiService apiService;
  ProductsCubit({required this.apiService}) : super(ProductsInitial());

  Future<void> getAllProductList(String productName) async {
    try {
      emit(ProductsLoading());
      // results = (await apiService.getAllData()) as Future<List<Results>>;
      productModel = (await apiService.getAllData(productName));
      emit(ProductsLoded(productModel: productModel));
    } catch (e) {
      emit(ProductsError(message: e.toString()));
    }
  }
}
