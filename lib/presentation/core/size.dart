import 'package:flutter/material.dart';

double getPercentSize(double percent, bool isHeight, BuildContext context) {
  double value;
  isHeight
      ? value = (percent * MediaQuery.of(context).size.height) / 100
      : value = (percent * MediaQuery.of(context).size.width) / 100;
  return roundToFixedDigit(value);
}

double roundToFixedDigit(double input) {
  var x = input.toStringAsFixed(3);
  final y = double.parse(x);
  return y;
}
