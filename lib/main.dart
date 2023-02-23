import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:qtec_task/screens/search_page/search_page.dart';

import 'models/products.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Task',
        theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(247, 242, 255, 1),
        ),
        home: SearchPage(),
      ),
    );
  }
}
