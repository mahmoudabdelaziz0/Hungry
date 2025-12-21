import 'package:flutter/material.dart';

import '../../../core/constans/app_color.dart';
import '../../../shared/custom_text.dart';

class CusttomAuthBtn extends StatelessWidget {
   CusttomAuthBtn({super.key, required this.text, this.onTap, this.color, this.textColor});
   final String text;
   final Color? color;
   final Color? textColor;
final Function() ? onTap;

  @override
  Widget build(BuildContext context) {
    return                   GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
            color:color?? Colors.white,
            borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.white,
          )
        ),
        child: Center(child: CustomText(text: text,fontSize:15 ,
            color:textColor?? AppColors.primary,
            weight: FontWeight.w600)),
      ),
    );

  }
}
