import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qtec_task/cubits/cubit/products_cubit.dart';
import 'package:qtec_task/models/product_model.dart';
import 'package:qtec_task/screens/product_detail_page/product_detail_page.dart';
import 'package:qtec_task/widgets/product_card/product_card.dart';
import 'package:qtec_task/widgets/search_field.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   // setting up the initial page for when ever the app launch it can call the api
  //   context.read<ProductsCubit>().getAllProductList();
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() => FocusScope.of(context).unfocus()),
      child: Scaffold(
          backgroundColor: const Color.fromRGBO(247, 242, 255, 1),
          body: BlocBuilder<ProductsCubit, ProductsState>(
            builder: (context, state) {
              if (state is ProductsLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is ProductsError) {
                return Center(
                  child: Text(state.message.toString()),
                );
              } else if (state is ProductsLoded) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: SafeArea(
                      child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          // todo implement the search function
                          child: SearchField(),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount:
                              state.productModel.data.products.results.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 2,
                                  mainAxisSpacing: 2,
                                  mainAxisExtent: 267),
                          itemBuilder: (context, index) => ProductCard(
                            press: () {},
                            productModel: state.productModel,
                          ),
                          // ProductCard(
                          //   results: state.productModel.data.products.results,
                          //   press: () => Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (contex) => ProductDetailPage(
                          //                 products: products[index],
                          //               ))),
                          // ),
                        ),
                      ],
                    ),
                  )),
                );
              } else {
                return SizedBox();
              }
            },
          )),
    );
  }
}
