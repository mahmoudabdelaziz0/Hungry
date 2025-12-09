import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../shared/custom_text.dart';

class OrderDetailsWidget extends StatelessWidget {
  const OrderDetailsWidget({super.key, required this.order, required this.taxes, required this.deleveryFess, required this.total});
  final String order,taxes,deleveryFess,total;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        checkoutWidget('Order',order,false,false),
        Gap(5),
        checkoutWidget('Taxes',taxes,false,false),
        Gap(5),
        checkoutWidget('Delivery Fees',deleveryFess,false,false),
        Gap(10),
        Divider(),
        Gap(10),
        checkoutWidget("Total", total, true,false),
        Gap(10),
        checkoutWidget("Estimated delivery time:", '15-20 mins', true,true),
      ],
    );

  }
}




Widget checkoutWidget(title,price,isBold,isSmall){
  return  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        CustomText(text: title ,fontSize:isSmall?12:15,
          weight:isBold?FontWeight.bold: FontWeight.w400 ,
          color:isBold?Colors.black: Colors.grey.shade600,),

        CustomText(text:isSmall?price: '\$$price',fontSize:isSmall?12: 15,
            weight:isBold?FontWeight.bold: FontWeight.w400 ,
            color:isBold?Colors.black: Colors.grey.shade600),

      ],
    ),
  );
}
