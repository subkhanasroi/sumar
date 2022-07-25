import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sumar_app/bloc/counter/counter_cubit.dart';
import 'package:sumar_app/common/theme.dart';
import 'package:sumar_app/page/home/home_page.dart';
import 'package:sumar_app/page/increment/example_bloc.dart';

class SumarApp extends StatelessWidget {
  const SumarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => CounterCubit(),
        child: const HomePage(),
      ),
      theme: theme(context),
      debugShowCheckedModeBanner: false,
    );
  }
}
