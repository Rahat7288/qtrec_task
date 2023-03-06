import 'package:flutter/material.dart';
import 'package:qtec_task/models/product_model.dart';
import 'package:qtec_task/screens/product_detail_page/component/prod_drescription.dart';
import 'package:qtec_task/screens/product_detail_page/component/slider.dart';
import 'package:qtec_task/widgets/search_field.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({
    super.key,
    required this.results,
  });
  final Results results;

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 242, 255, 1),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        leadingWidth: 25,
        backgroundColor: const Color.fromRGBO(247, 242, 255, 1),
        shadowColor: const Color.fromRGBO(247, 242, 255, 1),
        elevation: 0,
        title: const Text(
          'প্রোডাক্ট ডিটেইল',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: SearchField(),
              ),
              const SizedBox(
                height: 32,
              ),
              const Center(
                child: ImageSlider(),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ProdDrescription(
                  productName: widget.results.productName,
                  brandName: widget.results.seller,
                  distributorName: widget.results.seller,
                  productPrice: widget.results.charge.currentCharge.toString(),
                  sellPrice: widget.results.charge.sellingPrice.toString(),
                  profit: widget.results.charge.profit.toString(),
                  productSescription: widget.results.description,
                  description: widget.results.description,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
