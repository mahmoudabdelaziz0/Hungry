import 'package:flutter/material.dart';

import '../../../core/constans/app_color.dart';
import '../../../shared/custom_text.dart';

class FoodCatgory extends StatefulWidget {
   FoodCatgory({super.key, required this.selectedIndex, required this.categoty});

   final int selectedIndex;

  final List categoty;
  @override
  State<FoodCatgory> createState() => _FoodCatgoryState();
}

class _FoodCatgoryState extends State<FoodCatgory> {
  late int selectedIndex;

  @override
  void initState() {
    selectedIndex=widget.selectedIndex;
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(

        children: List.generate(widget.categoty.length, (index){

          return GestureDetector(

            onTap:(){
              setState(() {
                selectedIndex=index;
              });

            } ,
            child: Container(
                margin: EdgeInsets.only(right: 9),
                decoration: BoxDecoration(
                    color:selectedIndex==index?
                    AppColors.primary:Color(0xffF3F4F6)



                    ,
                    borderRadius: BorderRadius.circular(20)

                ),
                padding: EdgeInsets.symmetric(horizontal: 27,vertical: 15),
                child:CustomText(text: widget.categoty[index],weight:FontWeight.w500,color: selectedIndex==index?Colors.white:Colors.grey.shade700)



            ),
          );
        }),
      ),






    );
  }
}
