import 'package:flutter/material.dart';
import 'package:slimstats_bmi_calculator/const%20file/const.dart';

class InputValue extends StatelessWidget {
  final int inputvalue;
  final VoidCallback plusOnPressed;
  final VoidCallback minusOnPressed;

  final String imagepath;

  InputValue(
      {
      required this.imagepath,
      required this.inputvalue,
      required this.plusOnPressed,
      required this.minusOnPressed});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imagepath),
        Text(
          "$inputvalue",
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: minusOnPressed, icon: Icon(Icons.remove,size: 50.0,
                            color: kActiveColor,)),
            IconButton(onPressed: plusOnPressed, icon: Icon(Icons.add,size: 50.0,
                            color: kActiveColor,)),
          ],
        ),
      ],
    );
  }
}
