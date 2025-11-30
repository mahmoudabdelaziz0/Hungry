import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/shared/custom_text.dart';

class ToppingsCard extends StatelessWidget {
  const ToppingsCard({super.key, required this.ToppingName, required this.ToppingImage});
  final String ToppingName;
  final String ToppingImage;


  @override
  Widget build(BuildContext context) {



    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),

    decoration: BoxDecoration(

    color:Colors.white ,

      boxShadow: [
    BoxShadow(
      color: Color(0xff3C2F2F),
      blurRadius: 5,
      offset:const Offset(0, 4)
    )
      ],
      borderRadius: BorderRadius.circular(25)
    ),

        width: 100,


        child:

        Column(
          children: [
ClipRRect(
borderRadius:  BorderRadius.circular(25
),

  child:  Image.asset(ToppingImage
  ,
    height: 70,
    fit: BoxFit.cover,
  ),

)
,
            Container(
               margin: EdgeInsets.only(top: 5),
  decoration: BoxDecoration(
    color: Color(0xff3C2F2F),
    borderRadius: const BorderRadius.only(
    bottomLeft: Radius.circular(25),
    bottomRight: Radius.circular(25),


            ),

    ),
              padding: EdgeInsets.symmetric(horizontal: 5,vertical: 15),
              child: Row(

                children: [
                  CustomText(text:ToppingName,color:Colors.white,weight: FontWeight.bold,),
                  Spacer(),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Image.asset(
                      "assets/test/plus.png",
                      height: 20,
                      fit: BoxFit.cover,
                        ),)
                ],
              ),
            )
          ])
    );
  }
}
