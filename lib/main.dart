import 'package:flutter/material.dart';
import 'package:slimstats_bmi_calculator/screens/splash_screen.dart';


void main() {
  runApp(slimStats());
}

class slimStats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SlimStats BMI Calculator",
      debugShowCheckedModeBanner: false,

      //themeing========
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0XFF242335),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),

      home: SplahScreen(),
    );
  }
}
