import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constans/app_color.dart';
import 'package:hungry/features/checkout/widgets/order_details_widget.dart';
import 'package:hungry/features/checkout/widgets/success_dialog.dart';
import 'package:hungry/shared/custom_text.dart';

import '../../../shared/custom_Button.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView();

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
   String selectedMethod='Cash';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 30,scrolledUnderElevation: 0,backgroundColor: Colors.white,),

body: Padding(
  padding: const EdgeInsets.symmetric(horizontal:15 ),
  child: SingleChildScrollView(
    child: Column(
    crossAxisAlignment:CrossAxisAlignment.start ,
      children: [
    CustomText(text: 'Order Summary',fontSize: 20,weight:FontWeight.bold ,),
        OrderDetailsWidget(order: "18.5", taxes: "1.5", deleveryFess: "3", total: "23"),
    Gap(80),
        CustomText(text: 'Payment methods',fontSize: 20,weight:FontWeight.bold ,),
    
    Gap(20),
        ///Cash
        ListTile(
            onTap:(){
              setState(()=>selectedMethod= 'Cash');
    
            },
          contentPadding:EdgeInsets.symmetric(horizontal: 16,vertical: 8) ,
          shape:RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(10)
          ),
          tileColor: Color(0xff3C2F2F),
          leading: Image.asset("assets/icons/cash.png"),
    title: CustomText(text: "Cash on Delivery",color: Colors.white,),
          trailing: Radio<String>(
            activeColor:Colors.white ,
    
              value: 'Cash',
            groupValue:selectedMethod ,
            onChanged:(v){
              setState(() {
                selectedMethod=v!;
              });
    
            } ,
    
          ),
    
        ),
        Gap(10),
        ////Visa
        ListTile(
          onTap:(){
            setState(()=>selectedMethod= 'Visa');
    
          } ,
          contentPadding:EdgeInsets.symmetric(horizontal: 16,vertical: 2) ,
          shape:RoundedRectangleBorder(
              borderRadius:BorderRadius.circular(10)
          ),
          tileColor: Colors.grey,
          leading: Image.asset("assets/icons/visa.png"),
          title: CustomText(text: "Debit Card",color: Colors.white,),
          subtitle: CustomText(text: "**** **** 2353",color: Colors.white,),
          trailing: Radio<String>(
            activeColor:Colors.white ,
    
            value: 'Visa',
            groupValue:selectedMethod ,
            onChanged:(v){
              setState(() {
                selectedMethod=v!;
              });
            } ,
    
          ),
    
        ),
        Gap(5),
        Row(
          children: [
            Checkbox(
    
              activeColor: Color(0xffEF2A39),
                value: true, onChanged: (v){}),
            CustomText(text: "Save card detils for future payments")
          ],
        ),
    
    
    
    
    
    
    
    
      ],
    ),
  ),
),
      bottomSheet: Container(
        height: 120,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade800,
              blurRadius: 15,
              offset: Offset(0, 0)
            )
          ]
        ),
        child:       Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: 'Total',fontSize: 17,weight:FontWeight.bold ,),
                  CustomText(text: '\$ 23',fontSize: 20,weight:FontWeight.bold ,),

                ],
              ),
              CustomButton(text: 'Pay Now ',onTap: (){
                showDialog(
                    context: context,
                    builder: (zizo){

                      return SuccessDialog();
                    });

              },),


            ],
          ),
        ),
      ),

    );
  }
}


