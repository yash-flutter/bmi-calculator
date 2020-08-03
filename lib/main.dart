import 'package:bmi_calculator/imput_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF090C22),
        accentColor: Colors.redAccent.shade200,
        scaffoldBackgroundColor: Color(0xFF090D22),
        textTheme:TextTheme(bodyText2: TextStyle(color: Colors.white)),
        floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Color(0xAA800080))
      ),
      home: InputPage(),
    );
  }
}
