import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        primaryColor: Color(0xFF0A0E21),
        // accentColor: Colors.lightBlue,
        // textTheme: TextTheme(
        // bodyText2: TextStyle(color: Colors.white),
        // ),
      ),
      home: InputPage(),
    );
  }
}
