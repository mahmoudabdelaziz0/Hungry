import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constans/app_color.dart';
import 'package:hungry/shared/custom_Button.dart';
import '../../../shared/custom_text.dart';

import '../../cart/widgets/cart_Item.dart';

class OrderHistotyView extends StatelessWidget {
  const OrderHistotyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0,scrolledUnderElevation: 0,backgroundColor: Colors.white,),
      body:Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15),
        child: ListView.builder(
            padding: const EdgeInsets.only(bottom: 120,top: 10),
            itemCount: 3,

            itemBuilder:(context,index){
              return Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical:20 ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/test/Berger.png",width: 100,),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              CustomText(text: "Big Hungry",weight: FontWeight.bold,),
                              CustomText(text: "Qty:X2 ",weight: FontWeight.bold,),
                              CustomText(text: 'Price 10\$',weight:FontWeight.bold ,),



                            ],),

                        ],
                      ),
                      Gap(20),
                      CustomButton(text: "Re Order",width:double.infinity,color:Colors.blueGrey,)
                    ],
                  ),
                ),
              ) ;
            }
        ),
      )


    );
  }
}
