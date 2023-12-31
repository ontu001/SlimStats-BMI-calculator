import 'package:flutter/material.dart';
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
          style: kcommonTExtStyle,
        )
      ],
    );
  }
}
