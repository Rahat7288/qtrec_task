// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'products_cubit.dart';

abstract class ProductsState extends Equatable {
  const ProductsState();

  @override
  List<Object> get props => [];
}

class ProductsInitial extends ProductsState {
  @override
  List<Object> get props => [];
}

class ProductCubitLoading extends ProductsState {
  @override
  List<Object> get props => [];
}

class ProductCubitDataLoaded extends ProductsState {
  ProductModel productModel;
  ProductCubitDataLoaded({
    required this.productModel,
  });
  @override
  List<Object> get props => [productModel];
}

class ProductCubitError extends ProductsState {
  String message;
  ProductCubitError({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}
