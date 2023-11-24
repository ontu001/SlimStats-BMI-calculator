import 'package:flutter/material.dart';
import 'package:slimstats_bmi_calculator/const%20file/const.dart';
import 'package:slimstats_bmi_calculator/widgets/appbar.dart';
import 'package:slimstats_bmi_calculator/widgets/bottom_button.dart';
import 'package:slimstats_bmi_calculator/widgets/reusable_cart.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Result extends StatelessWidget {
  final double bmi;
  final String condition;
  final String suggestion;
  final String conditionImage;
  final String suggestionImage;
  final int age;
  final int weight;
  final int height;

  Result({ required this.bmi, required this.condition, required this.conditionImage, required this.suggestionImage, required this.age, required this.weight, required this.height, required this.suggestion});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(),
      ),

      //==============body
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Text(
              condition,
              style: kcommonTExtStyle,
            ),
          ),
          Text("you are $age years old and Your height is $height your weight is $weight"),
          Expanded(
              child: reusableCart(
            color: kinactiveColor,
            cardChild: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                children: [
                  Image.asset(conditionImage),
                  Text(
                    condition,
                    style: kcommonTExtStyle,
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  CircularPercentIndicator(
                    radius: 120.0,
                    lineWidth: 20.0,
                    animation: true,
                    percent: bmi / 100,
                    backgroundColor: kgreyColor,
                    center: new Text(
                      bmi.toStringAsFixed(1),
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: kActiveColor,
                  ),
                  SizedBox(
                    height: 60.0,
                  ),

                  //=====advice
                  Image.asset(suggestionImage),
                  Text(
                      suggestion)
                ],
              ),
            ),
          )),
          BottomButton(
              buttonText: "RECALCULATE",
              imagePath: "asset/icon/recalculate.png",
              ontap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
