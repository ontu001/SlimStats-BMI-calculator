import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slimstats_bmi_calculator/const%20file/const.dart';
import 'package:slimstats_bmi_calculator/widgets/appbar.dart';
import 'package:slimstats_bmi_calculator/widgets/bottom_button.dart';
import 'package:slimstats_bmi_calculator/widgets/gender.dart';
import 'package:slimstats_bmi_calculator/widgets/reusable_cart.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

enum gEnder { male, female, none }

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  double _value = 40.0;
 
  gEnder selecetedGender = gEnder.none;

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
                                    color: selecetedGender == gEnder.male
                                        ? kActiveColor
                                        : kinactiveColor,
                                    ontap: () {
                                      setState(() {
                                        selecetedGender = gEnder.male;
                                      });
                                    })),
                            Expanded(
                                child: reusableCart(
                                    cardChild: Gender(
                                      gender: "FEMALE",
                                      imagePath: "asset/icon/female.png",
                                    ),
                                    color: selecetedGender == gEnder.female
                                        ? kActiveColor
                                        : kinactiveColor,
                                    ontap: () {
                                      setState(() {
                                        selecetedGender = gEnder.female;
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
                  cardChild: SfSlider.vertical(
                    min: 0.0,
                    max: 100.0,
                    value: _value,
                    showTicks: true,
                    showLabels: true,
                    enableTooltip: true,
                    minorTicksPerInterval: 1,
                    onChanged: (dynamic value) {
                      setState(() {
                        _value = value;
                      });
                    },
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
