import 'package:flutter/material.dart';
import 'package:slimstats_bmi_calculator/const%20file/const.dart';

class appBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Icon(Icons.menu,color: kgreyColor,),
                Text("SLIMSTATS BMI CALCULATOR",style: TextStyle(fontSize: 16.0,color: Color(0xFFc2cef4)),),
                Icon(Icons.notification_add_outlined,color: kgreyColor,),
              ]);
  }
  

}