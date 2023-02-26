// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:qtec_task/models/product_model.dart';
import 'package:qtec_task/services/api_service.dart';
part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductModel? productModel;
  ApiService? apiService;
  ProductsCubit({
    required this.apiService,
  }) : super(ProductsInitial());

  void getAllProductList() async {
    try {
      emit(ProductCubitLoading());

      productModel = await apiService!.getData();
      emit(ProductCubitDataLoaded(productModel: productModel!));
    } catch (e) {
      emit(ProductCubitError(message: e.toString()));
    }
  }
}
