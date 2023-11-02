import 'package:flutter/material.dart';
import 'package:learn_flutter/BMI_Calculator.dart';

void main() {
  runApp(MainApp());
}

// ignore: use_key_in_widget_constructors
class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BMICalculator()
    );
  }
}
