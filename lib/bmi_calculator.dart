import 'dart:math';

class BmiCalculator {
  final int height;
  final int weight;
  double _bmi;

  BmiCalculator({this.height, this.weight});

  String calculateBmi() {
    this._bmi = this.weight / pow(this.height / 100, 2);
    return this._bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (this._bmi >= 25)
      return 'Overweight';
    else if (this._bmi > 18.5)
      return 'Normal';
    else
      return 'Underweight';
  }

  String getIntepretation() {
    if (this._bmi >= 25)
      return 'You have a higher than normal body weight. Try to exercise more.';
    else if (this._bmi > 18.5)
      return 'You have a normal body weight. Good job!';
    else
      return 'You have a lower than normal body weight. You can eat a bit more.';
  }
}
