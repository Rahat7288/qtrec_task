import 'package:flutter/material.dart';

class AddToCartButton extends StatefulWidget {
  const AddToCartButton({super.key});

  @override
  State<AddToCartButton> createState() => _AddToCartButtonState();
}

class _AddToCartButtonState extends State<AddToCartButton> {
  final String buttonName1 = 'এটি কিনুন';

  late int itemCount;
  late bool itemTag;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    itemCount = 0;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // changeButton = !changeButton;
        itemCount++;
        print('taaaappp');
        setState(() {});
      },
      child: itemCount != 0 ? cartButton() : addButton(),
    );
  }

  // Widget button() {
  Widget addButton() {
    return Stack(
      children: [
        SizedBox(
          height: 90,
          width: 90,
          child: Image.asset('assets/images/cartButton.png'),
        ),
        Positioned(
            top: 20,
            left: 20,
            child: SizedBox(
              width: 50,
              child: Text(
                buttonName1,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
                maxLines: 2,
              ),
            )),
      ],
    );
  }

  Widget cartButton() {
    return Stack(
      children: [
        SizedBox(
          height: 90,
          width: 90,
          child: Image.asset('assets/images/cartButton.png'),
        ),
        Positioned(
          top: 20,
          left: 20,
          child: SizedBox(
            width: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'কার্ট',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
