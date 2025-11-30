import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/constans/app_color.dart';
import '../../../shared/custom_text.dart';

class SpiceySlider extends StatelessWidget {
  const SpiceySlider({super.key, required this.value, required this.onChanged});

  final double value;


  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    return        Row(
      children: [
        Image.asset("assets/test/Sandwitch.png",height: 215),
        Spacer(),
        Column(
          children: [
            CustomText(text: "Customize Your Burger\n to Your Tastes.\n Ultimate Experience",weight: FontWeight.w600,),
            Slider(
              min: 0,
              max: 1,
              value: value ,
              onChanged: onChanged,
              activeColor:AppColors.primary ,
              inactiveColor: Colors.grey.shade300,


            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: '🥶 '),
                Gap(110),
                CustomText(text: '🌶️ '),

              ],)
          ],
        )
      ],
    );
  }
}
