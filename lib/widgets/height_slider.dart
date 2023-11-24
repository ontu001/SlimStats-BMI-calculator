import 'package:flutter/material.dart';
import 'package:slimstats_bmi_calculator/const%20file/const.dart';

class HeightSlider extends StatelessWidget {
  int currentValue;
  ValueChanged<double> onChanged;
  HeightSlider({required this.onChanged, required this.currentValue});
  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3,
      child: SliderTheme(
        data: SliderTheme.of(context).copyWith(
          activeTrackColor: kActiveColor,
          thumbColor: kActiveColor,
          inactiveTrackColor: kgreyColor,
          trackHeight: 13.0,
          thumbShape: RoundSliderThumbShape(
            enabledThumbRadius: 15,
          ),
        ),
        child: Slider(
            value: currentValue.toDouble(),
            min: 120,
            max: 220,
            label: currentValue.toString(),
            onChanged: onChanged),
      ),
    );
  }
}
