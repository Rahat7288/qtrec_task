import 'package:flutter/material.dart';
import 'package:qtec_task/buttons/add_to_cart_button.dart';
import 'package:qtec_task/screens/product_detail_page/component/separator.dart';

class ProdDrescription extends StatelessWidget {
  const ProdDrescription(
      {super.key,
      required this.productName,
      required this.brandName,
      required this.distributorName,
      required this.productPrice,
      required this.sellPrice,
      required this.profit,
      required this.productSescription,
      required this.description});
  final String productName,
      brandName,
      distributorName,
      productPrice,
      sellPrice,
      profit,
      productSescription,
      description;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        content(productName, brandName, distributorName, sellPrice,
            productPrice, profit, description, context),
        const Positioned(
          bottom: 50,
          left: 150,
          child: AddToCartButton(),
        )
      ],
    );
  }

  Widget content(String name, String bName, String disName, String sPrice,
      String bPrice, String pof, String descrip, BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const Text(
              'ব্রান্ডঃ ',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(100, 100, 100, 1),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              bName,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromRGBO(218, 32, 121, 1)),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              'ডিস্ট্রিবিউটরঃ ',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(100, 100, 100, 1),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              disName,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width / .9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'ক্রয়মূল্যঃ',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(
                          218,
                          32,
                          121,
                          1,
                        )),
                  ),
                  Text(
                    bPrice,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(
                          218,
                          32,
                          121,
                          1,
                        )),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'বিক্রয়মূল্যঃ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    sPrice,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const MySeparator(),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'লাভঃ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    pof,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'বিস্তারিত',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          descrip,
          style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(100, 100, 100, 1)),
        ),
      ],
    );
  }
}
