import 'dart:async';

import 'package:flutter/material.dart';
import 'package:slimstats_bmi_calculator/screens/home_screen.dart';
import 'package:slimstats_bmi_calculator/screens/result_page.dart';

class SplahScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplahScreenState();
  }
}

class SplahScreenState extends State<SplahScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'asset/logo/logo.png',
              height: 200.0,
              width: 200.0,
            ),
            Text("SLIMSTATS BMI CALCULATOR")
          ],
        ),
      ),
    );
  }
}
