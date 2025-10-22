import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constans/app_color.dart';
import 'package:hungry/shared/custom_text.dart';
import 'package:hungry/shared/custom_textfield.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailContoller =TextEditingController();
    TextEditingController passContoller =TextEditingController();

    return GestureDetector(
      onTap:()=> FocusScope.of(context).unfocus()
      ,
      child: Scaffold(
        backgroundColor: AppColors.primary ,
        body: Center(
          child: Padding(

            padding: const EdgeInsets.symmetric(horizontal:  20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Gap(110),
            SvgPicture.asset('assets/logo/Logo_hungry.svg'),
            CustomText(text: "Welcome Back,Discover The Fast Food", color: Colors.white, fontSize: 12, weight: FontWeight.w500)
                ,
                Gap(70),
CustomTextfield(hint: "Emaill Address", isPassword: false, controller: emailContoller),

                Gap(20),

                CustomTextfield(hint: "Password ", isPassword: true, controller: passContoller)




              ],
            ),
          ),
        ),




      ),
    );
  }
}
