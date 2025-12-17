import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constans/app_color.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 40,scrolledUnderElevation: 0,backgroundColor: AppColors.primary,actions: [Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          children: [


            Icon(Icons.arrow_back,color: Colors.white,),
            Gap(300),
            Icon(Icons.settings,color: Colors.white,),
          ],
        ),
      )],),

      body: Container(
        decoration: BoxDecoration(
          color: AppColors.primary
        ),
        child: Column(
          children: [
            CircleAvatar()
          ],
        ),
      ),

    );
  }
}
