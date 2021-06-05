import 'package:flutter/material.dart';
import 'Screens/input_page.dart';
import 'Screens/result.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       // home: InputPage(),
      initialRoute: '/',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0D22),
        scaffoldBackgroundColor: Color(0xFF0A0D22),
      ),
      routes: {
         '/' : (context) => InputPage(),
        '/first' : (context) => Result(),
      },

    );
  }
}
