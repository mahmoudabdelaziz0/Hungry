import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constans/app_color.dart';
import 'package:hungry/shared/custom_text.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List categoty =[
    'All',
    'Combo',
    'Sliders',
    'Classic'
  ];
  int selectedIndex =0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:()=>FocusScope.of(context).unfocus() ,
      child: Scaffold(
        body:
        Padding(

          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(

          children: [
            Gap(20),

            ////Header
            Row(

          children: [
            Column(
              crossAxisAlignment:CrossAxisAlignment.start ,
              children: [
          Gap(70),
          SvgPicture.asset('assets/logo/Logo_hungry.svg',color:AppColors.primary ,height: 40,),
                Gap(5),
                CustomText(text: "Heloo ,Zizo", color: Colors.grey.shade500, fontSize: 16, weight: FontWeight.w500)

              ],
            ),
      Spacer(),
            CircleAvatar(radius: 35,),

          ],

            ),

            Gap(25),
            //search bar
            Material(
              elevation: 3,
              shadowColor: Colors.grey,
              borderRadius: BorderRadius.circular(12),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(CupertinoIcons.search),
                  hintText: "Search..",
                  fillColor:Colors.white ,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.white
                    )

                  )
                ),
              ),
            ),

Gap(25),





//// Category
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
            
              children: List.generate(categoty.length, (index){
            
            return GestureDetector(

              onTap:(){
                setState(() {
                  selectedIndex=index;
                });

              } ,
              child: Container(
                margin: EdgeInsets.only(right: 9),
                  decoration: BoxDecoration(
                      color:selectedIndex==index?AppColors.primary:Color(0xffF3F4F6)


                      ,
                      borderRadius: BorderRadius.circular(20)
              
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 27,vertical: 15),
                  child:CustomText(text: categoty[index],weight:FontWeight.w500,color: selectedIndex==index?Colors.white:Colors.grey.shade700)
              
              
              
              ),
            );
              }),
            ),






          ),

Gap(25),
            Card(
              color: Colors.white,
child:Padding(
  padding: const EdgeInsets.all(8.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
  Image.asset('assets/test/Berger.png',width:180 ),
      Gap(10),
      CustomText(text: "Cheeseburger",weight:FontWeight.bold ,),
      CustomText(text: "Hurghadian Burger"),
      CustomText(text: "⭐ 4.9"),







    ],

  ),
) ,


            ),

            ////card item










          ],

          ),
        )
        ,


      ),
    );
  }
}
