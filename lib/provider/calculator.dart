import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorProvider with ChangeNotifier {
  final String _operator = '';
  String _input = '';
  String _output = '';

  String get input => _input;
  String get output => _output;
  String get operator => _operator;

  void onButtonPress(String value) {
    if (value == 'AC') {
      _input = '';
      _output = '';
    } else if (value == 'C') {
      if (_input.isNotEmpty && _output.isEmpty) {
        _input = _input.substring(0, _input.length - 1);
      }
    } else if (value == '=') {
      if (_input.isNotEmpty && !isOperator(_input[_input.length - 1])) {
        var userInput = _input;
        userInput = userInput.replaceAll('×', '*');
        Parser p = Parser();
        Expression expression = p.parse(userInput);
        ContextModel cm = ContextModel();
        var finalValue = expression.evaluate(EvaluationType.REAL, cm);
        _output = finalValue.toString();
        if (_output.endsWith('.0')) {
          _output = _output.substring(0, _output.length - 2);
        }
      }
    } else {
      if (isOperator(value)) {
        if (_input.isNotEmpty && isOperator(_input[_input.length - 1])) {
          _input = _input.substring(0, _input.length - 1);
        }
      }
      _input = _input + value;
    }
    notifyListeners();
  }

  bool isOperator(String value) {
    return value == '+' || value == '-' || value == '×' || value == '/';
  }
}
