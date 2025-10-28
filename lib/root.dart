import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungry/core/constans/app_color.dart';
import 'package:hungry/features/auth/view/profile_view.dart';
import 'package:hungry/features/card/view/card_view.dart';
import 'package:hungry/features/checkout/view/payment_view.dart';
import 'package:hungry/features/home/view/home_view.dart';
import 'package:hungry/features/orderHistory/view/order_histoty_view.dart';

class Root extends StatefulWidget {
   Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
   late final PageController controller;

    late List<Widget> screens;
    int currentScreen=0;
   @override
  void initState() {

screens=[
  HomeView(),
  CardView(),
  OrderHistotyView(),
  ProfileView(),



];
controller =PageController(initialPage: currentScreen);

super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller:controller ,
        children: screens,

physics: NeverScrollableScrollPhysics() ,


      ),






bottomNavigationBar: Container(
  padding: EdgeInsets.all(10),
  decoration: BoxDecoration(
    color: AppColors.primary,
    borderRadius: BorderRadius.circular(30)

  ),
  child: BottomNavigationBar(
    elevation: 0,
    backgroundColor: Colors.transparent
      ,
      type: BottomNavigationBarType.fixed,
  selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey.shade700,
      currentIndex: currentScreen,
      onTap: (index){
setState(() {
  currentScreen=index;
});
controller.jumpToPage(currentScreen);
      },

      items: [

  BottomNavigationBarItem(icon: Icon(CupertinoIcons.add_circled_solid),label: ""),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.ant_circle_fill),label: ""),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.antenna_radiowaves_left_right),label: "")


  ]),
),






    );
  }
}
