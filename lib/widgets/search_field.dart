import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/cubit/products_cubit.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final _formKey = GlobalKey<FormState>();
  String? _productName;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  void _submit() {
    setState(() {
      AutovalidateMode autovalidateMode = AutovalidateMode.always;
    });
    final form = _formKey.currentState;
    if (form != null && form.validate()) {
      form.save();
    }
    if (_productName != null) {
      context.read<ProductsCubit>().getAllProductList(_productName!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: autovalidateMode,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.white),
          ),
          suffixIcon: IconButton(
            icon: const Icon(Icons.search),
            color: const Color.fromRGBO(167, 167, 167, 1),
            onPressed: _submit,
          ),
          hintText: 'কাঙ্ক্ষিত পণ্যটি খুঁজুন',
        ),
        validator: (String? input) {
          if (input == null || input.trim().length < 2) {
            return 'Please enter the valied name';
          }
          return null;
        },
        onSaved: (String? input) {
          _productName = input;
        },
      ),
    );
  }
}
