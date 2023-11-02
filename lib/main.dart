import 'package:flutter/material.dart';
import 'package:learn_flutter/BMI_Calculator.dart';
import 'package:learn_flutter/Counter_Screen.dart';
// ignore: unused_import
import 'package:learn_flutter/Messanger_Screen.dart';
import 'package:learn_flutter/User_Screen.dart';

// ignore: unused_import
import 'Home_Screen.dart';
// ignore: unused_import
import 'Login_Screen.dart';

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
