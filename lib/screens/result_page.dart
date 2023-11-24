import 'package:flutter/material.dart';
import 'package:slimstats_bmi_calculator/const%20file/const.dart';
import 'package:slimstats_bmi_calculator/widgets/appbar.dart';
import 'package:slimstats_bmi_calculator/widgets/bottom_button.dart';
import 'package:slimstats_bmi_calculator/widgets/reusable_cart.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Result extends StatelessWidget {
  

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
              "YOUR CALCULATED BMI",
              style: kcommonTExtStyle,
            ),
          ),
          Expanded(
              child: reusableCart(
            color: kinactiveColor,
            cardChild: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                children: [
                  Image.asset("asset/icon/normal.png"),
                  Text(
                    "NORMAL",
                    style: kcommonTExtStyle,
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  CircularPercentIndicator(
                    radius: 120.0,
                    lineWidth: 20.0,
                    animation: true,
                    percent: 24 / 100,
                    backgroundColor: kgreyColor,
                    center: new Text(
                      "70.0%",
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
                  Image.asset("asset/icon/exercise.png"),
                  Text(
                      "Ehjgfkgwefgekwjfgwkjgfvkrjfgvrjgvejkrfgvrkjfgkrjfgkrjgfrkjgkrjg")
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
