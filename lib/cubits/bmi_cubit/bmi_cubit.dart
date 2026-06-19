import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mbi_calculator/cubits/bmi_cubit/bmi_states.dart';

class BmiCubit extends Cubit<BmiState> {
  BmiCubit(super.initialState);
  int weight = 10;
  int age = 5;
  int height = 169;

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
}
