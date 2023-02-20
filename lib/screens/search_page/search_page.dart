import 'package:flutter/material.dart';
import 'package:qtec_task/buttons/add_to_cart_button.dart';
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
      // appBar: AppBar(
      //   backgroundColor: Color.fromRGBO(247, 242, 255, 1),
      //   title: SearchField(),
      // ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SearchField(),
              const SizedBox(
                height: 20,
              ),
              // Container(
              //   child: GridView.count(
              //     crossAxisCount: 2,
              //   ),
              // )
            ],
          ),
        ),
      )),
    );
  }
}
