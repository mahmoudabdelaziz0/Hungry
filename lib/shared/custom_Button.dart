import 'package:flutter/material.dart';

import '../core/constans/app_color.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onTap, this.width,
     this.color});

final String text;

final Function()? onTap;
final  double? width;
final  Color? color;
  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: onTap,
        child: Container(
          width: width,

          padding: EdgeInsets.symmetric(horizontal: 18,vertical: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: color??AppColors.primary,
          ),
          child: Center(child: CustomText(text: text,weight: FontWeight.bold,color: Colors.white,fontSize: 16,)),
        ),
      );
  }
}
