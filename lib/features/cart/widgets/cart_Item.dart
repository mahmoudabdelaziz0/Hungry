import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/constans/app_color.dart';
import '../../../shared/custom_Button.dart';
import '../../../shared/custom_text.dart';

class CartItem extends StatefulWidget {
  const CartItem({super.key,
    required this.SandwitchImage,
    required this.SandwitchName,
    required this.SandwitchBrief,

   });
  final String SandwitchImage,SandwitchName,SandwitchBrief;



  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
    int number=1;
  void onAdd(){
    setState(() {
      number++;
    });
  }
  void onMin(){
 if (number>1) {
   setState(() {
     number--;
   });

 }
 else
   return null;
  }
  void onRemove(){
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 2),
      child: Column(
        children: [
          Gap(45),
          Card(
            elevation: 7,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Image.asset(widget.SandwitchImage,width: 100,),
                      CustomText(text: widget.SandwitchName,weight: FontWeight.bold,),
                      CustomText(text: widget.SandwitchBrief,weight: FontWeight.bold,),


                    ],),


                  Column(children: [
                    Row(
                      children: [
                        GestureDetector(
                      onTap:onAdd,
                          child: CircleAvatar(

                            child: Icon(CupertinoIcons.add,color: Colors.white,),
                            backgroundColor: AppColors.primary,
                            radius: 17,

                          ),
                        ),
                        Gap(15),
                        CustomText(text: number.toString(),weight: FontWeight.w400,fontSize: 20,),
                        Gap(15),

                        GestureDetector(
                          onTap: onMin,
                          child: CircleAvatar(


                            child: Icon(CupertinoIcons.minus,color: Colors.white,),
                            backgroundColor: AppColors.primary,
                            radius: 17,
                          ),

                        ),


                      ],
                    ),
                    Gap(20),

Container(
  padding:EdgeInsets.symmetric(horizontal: 24,vertical: 8),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(70),
    color: AppColors.primary,


  ),

  child:GestureDetector(
      onTap:onRemove,
      child: CustomText(text: "Remove",color: Colors.white,fontSize: 15,weight: FontWeight.bold,)))

                  ],),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
