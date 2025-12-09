import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constans/app_color.dart';
import 'package:hungry/shared/custom_Button.dart';
import 'package:hungry/shared/custom_text.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 205),
        child: Container(
          padding: EdgeInsets.all(10),

          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade800,
                    blurRadius: 15,
                    offset: Offset(0, 0)
                )
              ]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: AppColors.primary,
                child: Icon(CupertinoIcons.checkmark,color: Colors.white,size: 50,),




              ),
              Gap(15),
              Image.asset("assets/test/Success !.png"),
              Gap(15),
              CustomText(text: " Your payment was successful \n A receipt for this \npurchase has been sent to your email.",fontSize: 12,color: Color(0xffBCBBBB),weight: FontWeight.w400,),
              Gap(30),
              CustomButton(text: "Go Back",width: 200,onTap: (){
                Navigator.pop(context);
              },),


            ],
          ),

        ),
      ),

    );
  }
}
