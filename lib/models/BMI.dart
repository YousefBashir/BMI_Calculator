import 'dart:math';

enum Gender { male, female }

class BmiModel {
  Gender selectedGender;
  int height;
  int weight;
  double bmi;


  BmiModel({this.selectedGender, this.height, this.weight});

  String calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25) {
      return 'Overweight!';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
}