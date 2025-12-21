import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constans/app_color.dart';
import 'package:hungry/features/cart/widgets/cart_Item.dart';
import 'package:hungry/features/checkout/view/checkout_view.dart';
import 'package:hungry/shared/custom_Button.dart';
import 'package:hungry/shared/custom_text.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              CartItem(SandwitchImage: "assets/test/Berger.png", SandwitchName: "Big Hungry", SandwitchBrief: "Original Taste",),
              CartItem(SandwitchImage: "assets/test/Braber1.png", SandwitchName: "Big Tasty", SandwitchBrief: " Tasty One",),
              CartItem(SandwitchImage: "assets/test/Brager2.png", SandwitchName: "Chickano", SandwitchBrief: "Most Delicious Chicken",),
              CartItem(SandwitchImage: "assets/test/Brager3.png", SandwitchName: "Biconer", SandwitchBrief: "Bicon With Love",),

              Gap(50),


            ],
          ),
        ),
      ),


      bottomSheet:  Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              offset: const Offset(0, 0),
              color: Colors.grey.shade800
            )
          ],
          color: Colors.white,
borderRadius: BorderRadius.only(topLeft:
Radius.circular(30),
topRight: Radius.circular(30)
)

        ),
        padding: EdgeInsets.all(7),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: 'Total',fontSize: 17,weight:FontWeight.bold ,),
                CustomText(text: '\$ 99.19',fontSize: 20,weight:FontWeight.bold ,),

              ],
            ),
            Gap(10),
            CustomButton(text: 'Checkout',

              onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (c){
  return CheckoutView();
}));
              
              },),



          ],
        ),
      ),
    );
  }
}
