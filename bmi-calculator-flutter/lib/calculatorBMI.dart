import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final height;
  final weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Norrmal';
    } else {
      return 'underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'eat less brooooo';
    } else if (_bmi > 18.5) {
      return 'you ok mymaaaan';
    } else {
      return 'You have a lower than normal bliet ';
    }
  }
}
