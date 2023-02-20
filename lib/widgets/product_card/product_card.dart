import 'package:flutter/material.dart';
import 'package:qtec_task/widgets/product_card/elements/stock_tag.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});
  final String productImage = 'assets/images/img1.png';
  final String productName = 'Lays Classic Family Chips';
  final String productPrice = '৳ 20.00';
  final String sellPrice = '৳ 25.00';
  final String previousPrice = '৳ 22.00';
  final String profit = '৳ 5.00';
  final bool stock = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 267,
          width: 164,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(29),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                  child: Image(
                    height: 117,
                    width: 87,
                    image: AssetImage(productImage),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  productName,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      // height: 20,
                      color: Color.fromRGBO(50, 50, 50, 1)),
                ),
                const SizedBox(
                  height: 10,
                ),

                // price section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // left Column
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'ক্রয়',
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              productPrice,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(218, 32, 121, 1),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'বিক্রয়',
                              style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(100, 100, 100, 1)),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              sellPrice,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(100, 100, 100, 1),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    // right column
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Text(
                              previousPrice,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(218, 32, 121, 1),
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ],
                        ),
                        // const SizedBox(
                        //   height: 10,
                        // ),
                        Row(
                          children: [
                            const Text(
                              'লাভ',
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(100, 100, 100, 1),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              profit,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(100, 100, 100, 1),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        stock
            ? Positioned(
                top: 10,
                right: 10,
                child: StockTag(),
              )
            : Container()
      ],
    );
  }
}
