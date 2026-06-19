import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mbi_calculator/cubits/bmi_cubit/bmi_states.dart';

class BmiCubit extends Cubit<BmiState> {
  BmiCubit(super.initialState);
  int weight = 15;
  int age = 10;
  int height = 169;
  double bmi = 0;
  String stats = 'NORMAL';
  String descrption = 'You have a normal body weight\nKeep it up!';
  Color statsColor = Colors.green;

  void weightInc() {
    weight++;
    emit(UpdeteState(weight));
  }

  void weightDec() {
    if (weight <= 10) {
      emit(ErorrState('Please Enter a Logical Value Hero'));
    } else {
      weight--;
      emit(UpdeteState(weight));
    }
  }

  void ageInc() {
    age++;
    emit(UpdeteState(age));
  }

  void ageDec() {
    if (age <= 5) {
      emit(ErorrState('Please Enter a Logical Value Hero'));
    } else {
      age--;
      emit(UpdeteState(age));
    }
  }

  void changeHeight(int value) {
    height = value;
    emit(UpdeteState(height));
  }

  double bmiCaculate(int height, int weight) {
    bmi = weight / ((height / 100) * (height / 100));
    return bmi;
  }

  String getStats(int height, int weight) {
    bmi = weight / ((height / 100) * (height / 100));
    if (bmi < 18.5) {
      stats = 'UNDERWEIGHT';
      statsColor = Colors.blue;
    } else if (bmi < 25) {
      stats = 'NORMAL';
      statsColor = Colors.green;
    } else if (bmi < 30) {
      stats = 'OVERWEIGHT';
      statsColor = Colors.red;
    } else {
      stats = 'OBESE';
      statsColor = Colors.yellow;
    }
    return stats;
  }

  String geDescrption(int height, int weight) {
    bmi = weight / ((height / 100) * (height / 100));
    if (bmi < 18.5) {
      descrption = 'You have lower than normal weight\nEat more healthy food.';
    } else if (bmi < 25) {
      descrption = 'You have a normal body weight\nKeep it up!';
    } else if (bmi < 30) {
      descrption =
          'You have higher than normal weight\nPlease exercise more often.';
    } else {
      descrption =
          'You have much higher than normal weight\nPlease consult a doctor.';
    }
    return descrption;
  }
}
