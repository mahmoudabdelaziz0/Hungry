import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constans/app_color.dart';
import 'package:hungry/features/product/widgets/toppings_card.dart';
import 'package:hungry/shared/custom_Button.dart';
import 'package:hungry/shared/custom_text.dart';

import '../widgets/spicey_slider.dart';

class ProductDetailsView extends StatefulWidget {

  const ProductDetailsView({super.key});

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
double value=0.5;


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

      ),
body: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 15),
  child: SingleChildScrollView(
    child: Column( crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SpiceySlider(
          value: value,
          onChanged: (v)=>  setState(()=>   value=v ),


        ),
        Gap(50),
        CustomText(text: "Toppings ",weight:FontWeight.w400 ,fontSize: 20,),
        SingleChildScrollView(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ToppingsCard(ToppingName: '   Tomato', ToppingImage: 'assets/test/tomato.png',),
              Gap(4),
              ToppingsCard(ToppingName: '  Pickeles', ToppingImage: 'assets/test/picklle.png'),
              Gap(4),
              ToppingsCard(ToppingName: '    Onions', ToppingImage: 'assets/test/onions.png',),
              Gap(4),
              ToppingsCard(ToppingName: '    Bicon', ToppingImage: 'assets/test/Bicon.png',),

            ],
          ),
        ),

        CustomText(text: "Sides ",weight:FontWeight.w400 ,fontSize: 20,),
        SingleChildScrollView(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ToppingsCard(ToppingName:'     Fries ', ToppingImage: 'assets/test/Fries.png',),
              Gap(5),
              ToppingsCard(ToppingName:'Coleslaw', ToppingImage: 'assets/test/Coleslaw.png',),
              Gap(5),
              ToppingsCard(ToppingName:'OninRings', ToppingImage: 'assets/test/oninRings.png',),
              Gap(5),
              ToppingsCard(ToppingName:'    Salad', ToppingImage: 'assets/test/Salad.png',),


            ],
          ),
        ),
        Gap(25),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
children: [
  CustomText(text: 'Total',fontSize: 17,weight:FontWeight.bold ,),
  CustomText(text: '\$ 18.9',fontSize: 20,weight:FontWeight.bold ,),

],
),
CustomButton(text: 'Add To Cart',onTap: (){},),


          ],
        ),
      ],
      

    ),
  ),

),


    );
  }
}
