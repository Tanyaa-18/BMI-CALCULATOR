import 'dart:math';

class CalculatorBrain{
  CalculatorBrain({this.weight, this.height});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI(){
  _bmi = weight/pow(height/100, 2);
   return _bmi.toStringAsFixed(1);
}

String getResuly(){
    if(_bmi>=25)
      return 'overweight';
    else if (_bmi>18.5)
      return 'normal';
    else
      return 'underweight';
}

String getInterpretation(){
  if(_bmi>=25)
    return 'You have higher than normal Body weight. Try to exercise more ';
  else if (_bmi>18.5)
    return 'You have normal body weight. Good Job!';
  else
    return 'You have lower than the normal Body weight. You can eat a bit more.';
}

}