import 'package:flutter/material.dart';
import 'package:slimstats_bmi_calculator/const%20file/const.dart';

class BottomButton extends StatelessWidget {
  final String buttonText;
  final String imagePath;
  final VoidCallback ontap;
  BottomButton({required this.buttonText, required this.imagePath, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 111.0,
      height: 150.0,
      padding: EdgeInsets.only(bottom: 30.0),
      decoration: BoxDecoration(
          color: kinactiveColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(45.0), topRight: Radius.circular(45))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: ontap,
            child: CircleAvatar(
              radius: 37.0,
              backgroundColor: const Color.fromARGB(255, 255, 94, 0),
              backgroundImage: AssetImage(imagePath),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(buttonText),
        ],
      ),
    );
  }
}
