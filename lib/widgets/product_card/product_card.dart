import 'package:flutter/material.dart';
import 'package:qtec_task/models/product_model.dart';
import 'package:qtec_task/widgets/product_card/elements/stock_tag.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.productModel,
    required this.press,
  });
  final ProductModel productModel;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
            Container(
              height: 267,
              // width: 164,
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
                        image: AssetImage(
                            productModel.data.products.results[0].image),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      productModel.data.products.results[0].productName,
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
                                  productModel
                                      .data
                                      .products
                                      .results[0]
                                      .charge
                                      .currentCharge
                                      .toString(),
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
                                  productModel
                                      .data
                                      .products
                                      .results[0]
                                      .charge
                                      .sellingPrice
                                      .toString(),
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
                                  productModel
                                      .data
                                      .products
                                      .results[0]
                                      .charge
                                      .discountCharge
                                      .toString(),
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
                                  productModel
                                      .data
                                      .products
                                      .results[0]
                                      .charge
                                      .profit
                                      .toString(),
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
            // products.stockTag
            //     ? Positioned(
            //         top: 10,
            //         right: 10,
            //         child: StockTag(),
            //       )
            // : Container()
          ],
        ),
      ),
    );
  }
}
