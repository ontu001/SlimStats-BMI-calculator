import 'package:flutter/material.dart';
import 'package:slimstats_bmi_calculator/const%20file/const.dart';
import 'package:slimstats_bmi_calculator/widgets/appbar.dart';
import 'package:slimstats_bmi_calculator/widgets/bottom_button.dart';
import 'package:slimstats_bmi_calculator/widgets/gender.dart';
import 'package:slimstats_bmi_calculator/widgets/reusable_cart.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  double _value = 140.0;
  Color mselectedColor = kinactiveColor;
  Color femselectedColor = kinactiveColor;

  void updateColor(String gndr) {
    if (gndr == "male") {
      mselectedColor = kActiveColor;
      femselectedColor = kinactiveColor;
    }
    if (gndr == "female") {
      femselectedColor = kActiveColor;
      mselectedColor = kinactiveColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(),
      ),

      //body=============
      body: Column(
        children: [
          //mesurement area
          Expanded(
            //gender, age, weight
            child: Row(
              children: [
                //gender age weight
                Expanded(
                  flex: 4,
                  child: Column(
                    children: [
//gender====
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                child: reusableCart(
                                    cardChild: Gender(
                                      gender: "MALE",
                                      imagePath: "asset/icon/male.png",
                                    ),
                                    color: mselectedColor,
                                    ontap: () {
                                      setState(() {
                                        updateColor("male");
                                      });
                                    })),
                            Expanded(
                                child: reusableCart(
                                    cardChild: Gender(
                                      gender: "FEMALE",
                                      imagePath: "asset/icon/female.png",
                                    ),
                                    color: femselectedColor,
                                    ontap: () {
                                      setState(() {
                                        updateColor("female");
                                      });
                                    })),
                          ],
                        ),
                      ),

                      //age===
                      Expanded(child: reusableCart(color: kinactiveColor)),
                      Expanded(child: reusableCart(color: kinactiveColor))
                    ],
                  ),
                ),

                //=============height

                Expanded(
                    child: reusableCart(
                  color: kinactiveColor,
                  cardChild: RotatedBox(
                    quarterTurns: 3,
                    child: Slider(
                        value: _value,
                        min: 120,
                        max: 220,
                        activeColor: kActiveColor,
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        }),
                  ),
                ))
              ],
            ),
          ),

          //====button
          BottomButton(
            buttonText: "CALCULATE",
            imagePath: "asset/icon/calculate.png",
            ontap: () {},
          ),
        ],
      ),
    );
  }
}
