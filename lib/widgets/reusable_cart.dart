import 'package:flutter/material.dart';

class reusableCart extends StatelessWidget {
  final VoidCallback? ontap;
  final Widget? cardChild;
  final Color color;

  reusableCart({this.cardChild, required this.color, this.ontap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0), color: color),
            child: cardChild,
      ),
    );
  }
}
