import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mbi_calculator/cubits/bmi_cubit/bmi_cubit.dart';
import 'package:mbi_calculator/cubits/bmi_cubit/bmi_states.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xD60A0E21),
      appBar: AppBar(
        backgroundColor: Color(0xff0a0e21),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            size: 30,
          ),
        ),
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Center(
              child: Text(
                'Your Result',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.5,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff1d1e33),
                borderRadius: BorderRadius.circular(15),
              ),
              child: BlocBuilder<BmiCubit, BmiState>(
                builder: (BuildContext context, BmiState state) {
                  return Column(
                    mainAxisAlignment: .spaceEvenly,
                    children: [
                      Text(
                        context.read<BmiCubit>().stats,
                        style: TextStyle(
                          color: context.read<BmiCubit>().statsColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        context.read<BmiCubit>().bmi.toStringAsFixed(2),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 60,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          context.read<BmiCubit>().descrption,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            letterSpacing: -0.5,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: double.infinity,
              height: 118,
              decoration: BoxDecoration(color: Color(0xffe83d66)),
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
