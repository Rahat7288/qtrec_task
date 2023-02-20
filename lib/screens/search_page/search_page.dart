import 'package:flutter/material.dart';
import 'package:qtec_task/models/products.dart';
import 'package:qtec_task/widgets/product_card/product_card.dart';

import 'package:qtec_task/widgets/search_field.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 242, 255, 1),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const SearchField(),
              const SizedBox(
                height: 20,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                    mainAxisExtent: 267),
                itemBuilder: (context, index) =>
                    ProductCard(products: products[index]),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
