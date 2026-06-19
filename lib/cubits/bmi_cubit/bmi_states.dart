abstract class BmiState {}

class InitialState extends BmiState {}

class UpdeteState extends BmiState {
  UpdeteState(this.counter);
  final int counter;
}

class ErorrState extends BmiState {
  ErorrState(this.errorMessage);
  final String errorMessage;
}
