import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constans/app_color.dart';
import 'package:hungry/features/auth/view/signup_view.dart';
import 'package:hungry/root.dart';
import 'package:hungry/shared/custom_text.dart';
import 'package:hungry/shared/custom_textfield.dart';

import '../widgets/custtom_btn.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailContoller =TextEditingController();
    TextEditingController passContoller =TextEditingController();
    final GlobalKey<FormState> _formKey=GlobalKey<FormState>();

    return GestureDetector(
      onTap:()=> FocusScope.of(context).unfocus()
      ,
      child: Scaffold(
        backgroundColor: Colors.white ,
        body: Center(
          child: Form(
            key:_formKey ,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [


                Gap(200),
            SvgPicture.asset('assets/logo/Logo_hungry.svg',color: AppColors.primary,),
            CustomText(text: "Welcome Back,Discover The Fast Food", color: AppColors.primary, fontSize: 12, weight: FontWeight.w500)
                ,
                Gap(100),

          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color:  AppColors.primary,
                  borderRadius: BorderRadius.only(topRight:Radius.circular(30),
                      topLeft: Radius.circular(30))
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Gap(30),
                    CustomTextfield(hint: "Emaill Address", isPassword: false, controller: emailContoller),
                
                    Gap(15),
                
                    CustomTextfield(hint: "Password ", isPassword: true, controller: passContoller),
                    Gap(20),
                
                    CusttomAuthBtn(
                      color:AppColors.primary ,
                      textColor: Colors.white,
                      text: "Login ",onTap: (){
                      if(_formKey.currentState!.validate()){
                        Navigator.push(context, MaterialPageRoute(builder: (c){
                            return Root();
                        }));
                      }
                
                    },),
                    Gap(15)
                    ,
                    ///go to SignUp
                    CusttomAuthBtn(
                      textColor: AppColors.primary,
                      color: Colors.white,
                      text: "Create Account ?",
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (c){
                            return SignupView();
                        }));
                
                      },),

                    ///Guest
                    Gap(20),
                    GestureDetector(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (c){return Root();}));
                      } ,
                        child: CustomText(text: 'Continue as a guest ?',
                          fontSize: 13,
                          color:Colors.orange ,
                        weight: FontWeight.bold,
                        )),

                  ],
                ),
              ),
            ),
          ),



              ],
            ),
          ),
        ),




      ),
    );
  }
}
