import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slimstats_bmi_calculator/const%20file/const.dart';
import 'package:slimstats_bmi_calculator/widgets/appbar.dart';
import 'package:slimstats_bmi_calculator/widgets/gender.dart';
import 'package:slimstats_bmi_calculator/widgets/reusable_cart.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
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
                                        imagePath: "asset/icon/male.png",),
                                    color: kinactiveColor,
                                    ontap: () {})),
                            Expanded(
                                child: reusableCart(
                                    cardChild: Gender(
                                        gender: "FEMALE",
                                        imagePath: "asset/icon/female.png",),
                                    color: kinactiveColor,
                                    ontap: () {})),
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

                Expanded(child: reusableCart(color: kinactiveColor))
              ],
            ),
          ),

          //====button
        ],
      ),
    );
  }
}
