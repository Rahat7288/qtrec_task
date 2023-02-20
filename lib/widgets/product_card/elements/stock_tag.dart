import 'package:flutter/material.dart';

class StockTag extends StatelessWidget {
  const StockTag({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 20,
      // padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(255, 204, 204, 1),
      ),
      child: const Padding(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Text(
          'স্টকে নেই',
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(198, 40, 40, 1)),
        ),
      ),
    );
  }
}
