import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qtec_task/l10n/l10n.dart';
import 'package:qtec_task/services/api_service.dart';
import 'package:qtec_task/screens/search_page/search_page.dart';
import 'cubits/cubit/products_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => ProductsCubit(apiService: ApiService()))
      ],
      child: MaterialApp(
        supportedLocales: L10n.all,
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
