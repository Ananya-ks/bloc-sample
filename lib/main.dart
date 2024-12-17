// import 'package:bloc_sample/features/counter/ui/counter_page.dart';
import 'package:bloc_sample/features/counter/cubit/counter_cubit_cubit.dart';
// import 'package:bloc_sample/features/counter/ui/counter_page.dart';
import 'package:bloc_sample/features/counter/ui/new_counter_page.dart';
// import 'package:bloc_sample/features/home/ui/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();

  // var cartBox = await Hive.openBox('cartbox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return const MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   // home: HomePage(),
    //   home: CounterPage(),
    // );
    return MaterialApp(
      home: BlocProvider(
        create: (_) => CounterCubitCubit(),
        child: NewCounterPage(),
        ),
    );
  }
  
}
