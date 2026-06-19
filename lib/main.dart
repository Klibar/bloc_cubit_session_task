import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mbi_calculator/cubits/bmi_cubit/bmi_cubit.dart';
import 'package:mbi_calculator/cubits/bmi_cubit/bmi_states.dart';
import 'package:mbi_calculator/views/mbi_input_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BmiCubit(InitialState()),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: MainScreen()),
    );
  }
}
