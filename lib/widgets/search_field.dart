import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: TextField(
      decoration: InputDecoration(
        fillColor: Colors.red,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Colors.white,
            style: BorderStyle.solid,
            width: 0,
          ),
        ),
        suffixIcon: Icon(Icons.search),
        hintText: 'কাঙ্ক্ষিত পণ্যটি খুঁজুন',
      ),
    ));
  }
}
