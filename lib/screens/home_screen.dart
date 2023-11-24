import 'package:flutter/material.dart';
import 'package:slimstats_bmi_calculator/const%20file/const.dart';
import 'package:slimstats_bmi_calculator/widgets/appbar.dart';
import 'package:slimstats_bmi_calculator/widgets/bottom_button.dart';
import 'package:slimstats_bmi_calculator/widgets/gender.dart';
import 'package:slimstats_bmi_calculator/widgets/height_slider.dart';
import 'package:slimstats_bmi_calculator/widgets/reusable_cart.dart';

enum gEnder { male, female, none }

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  int _currentValue = 180;
  gEnder selectedGender = gEnder.none;

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
                  flex: 3,
                  child: Column(
                    children: [
                      //age===
                      Expanded(child: reusableCart(color: kinactiveColor)),

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
                                    color: selectedGender == gEnder.male
                                        ? kActiveColor
                                        : kinactiveColor,
                                    ontap: () {
                                      setState(() {
                                        selectedGender = gEnder.male;
                                      });
                                    })),
                            Expanded(
                                child: reusableCart(
                                    cardChild: Gender(
                                      gender: "FEMALE",
                                      imagePath: "asset/icon/female.png",
                                    ),
                                    color: selectedGender == gEnder.female
                                        ? kActiveColor
                                        : kinactiveColor,
                                    ontap: () {
                                      setState(() {
                                        selectedGender = gEnder.female;
                                      });
                                    })),
                          ],
                        ),
                      ),

                      Expanded(child: reusableCart(color: kinactiveColor)),
                    ],
                  ),
                ),

                //=============height

                Expanded(
                    child: reusableCart(
                  color: kinactiveColor,
                  cardChild: Column(children: [
                    Text(
                      "HEIGHT",
                      style: TextStyle(fontSize: 14.0,color: kgreyColor),
                    ),
                    Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "$_currentValue",
                          style: kNumberTextStyle,
                        ),
                        Text("cm",style: TextStyle(color: kgreyColor),)
                      ],
                    ),
                   
                    Expanded(
                      child: HeightSlider(
                        onChanged: (double newvalue) {
                          setState(() {
                            _currentValue = newvalue.round();
                          });
                        },
                        currentValue: _currentValue,
                      ),
                    )
                  ]),
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
