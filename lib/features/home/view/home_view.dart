import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constans/app_color.dart';
import 'package:hungry/features/home/widgets/card_item.dart';
import 'package:hungry/features/home/widgets/food_catgory.dart';
import 'package:hungry/features/home/widgets/search.dart';
import 'package:hungry/features/home/widgets/user_header.dart';
import 'package:hungry/features/product/view/product_details_view.dart';
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





        body:CustomScrollView(


slivers: [
  /// header
  SliverAppBar(
    elevation: 0,
    scrolledUnderElevation: 0,
pinned:true ,
    backgroundColor: Colors.white,
    toolbarHeight: 200,
automaticallyImplyLeading: false,

flexibleSpace:    Padding(

  padding: const EdgeInsets.only(top: 20,right: 20,left: 20),

  child: Column(
    children: [

      UserHeader(username: "My Lovely Biba"),

      Gap(20),


      SearchField(),


    ],
  ),
),


  ),

  /// Category
SliverToBoxAdapter(

  child: Padding(

    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
    child: FoodCatgory(selectedIndex: selectedIndex, categoty: categoty)

  ),

),
/// GridView

  SliverPadding(padding: EdgeInsets.symmetric(horizontal: 15,),
    sliver: SliverGrid(delegate: SliverChildBuilderDelegate(
childCount: 6, 
          (context,index)=>
       GestureDetector(
         onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (c){
             return ProductDetailsView();
           }) );
         },
         child: CardItem(image: "assets/test/Berger.png",
             text: "Premium Cheese burger",
             desc: "Most Recommended In Hurghada",
             rate: "4.9"),
       )

    ,),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
          childAspectRatio: 0.59,


        )),


  )



],



        ),

















      ),
    );
  }
}
