import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constans/app_color.dart';
import 'package:hungry/features/auth/view/login_view.dart';
import 'package:hungry/features/auth/widgets/custtom_btn.dart';
import 'package:hungry/shared/custom_text.dart';
import 'package:hungry/shared/custom_textfield.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameContoller =TextEditingController();
    TextEditingController emailContoller =TextEditingController();
    TextEditingController passContoller =TextEditingController();
    TextEditingController confirmPassContoller =TextEditingController();

    final GlobalKey<FormState> _formKey=GlobalKey<FormState>();

    return GestureDetector(
      onTap:()=> FocusScope.of(context).unfocus()
      ,
      child: Scaffold(
        backgroundColor:Colors.white ,
        body: Center(
          child: Form(
            key:_formKey ,
            child: Column(
              children: [
                Gap(200),
                SvgPicture.asset('assets/logo/Logo_hungry.svg',color: AppColors.primary,),
                CustomText(text: "Welcome ,Discover The Fast Food", color: AppColors.primary, fontSize: 12, weight: FontWeight.w500)
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
                        children: [            CustomTextfield(hint: " Name", isPassword: false, controller: nameContoller),
                              Gap(20),
                              CustomTextfield(hint: "Email Address ", isPassword: false, controller: emailContoller),
                              Gap(20),
                              CustomTextfield(hint: "Password  ", isPassword: true, controller: passContoller),
                              Gap(30),
                              CusttomAuthBtn(
                                color:AppColors.primary ,
                                textColor: Colors.white,
                                text: "Sign Up",onTap: (){
                                if(_formKey.currentState!.validate()){
                                  print("success Register");
                                }
                      
                              },),
                          Gap(10)
                          ,
                          CusttomAuthBtn(
                            textColor: AppColors.primary,
                            color: Colors.white,
                            text: "Go To Login ?",
                            onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (c){
                            return LoginView();
                          }));
                      
                          },),
                      
                      
                      
                      
                      
                        ],
                      ),
                    ),
                  ),
                )

              ],
            ),
          ),
        ),




      ),
    );
  }
}
