import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slimstats_bmi_calculator/const%20file/const.dart';

class Gender extends StatelessWidget {
  final String imagePath;
  final String gender;

  Gender({required this.gender, required this.imagePath});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
        ),
        SizedBox(
          height: 7.0,
        ),
        Text(
          gender,
          style: TextStyle(
              color: kgreyColor, fontSize: 20.0, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
