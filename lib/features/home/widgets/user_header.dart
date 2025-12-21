import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../core/constans/app_color.dart';
import '../../../shared/custom_text.dart';

class UserHeader extends StatelessWidget {
  const UserHeader({super.key, required this.username});
  final String username;


  @override
  Widget build(BuildContext context) {
    return         Row(

      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.start ,
          children: [
            Gap(70),
            SvgPicture.asset('assets/logo/Logo_hungry.svg',color:AppColors.primary ,height: 40,),
            Gap(5),
            CustomText(text: "Heloo,$username " , color: Colors.grey.shade500, fontSize: 16, weight: FontWeight.w500)

          ],
        ),
        Spacer(),
        CircleAvatar(radius: 35,backgroundImage: AssetImage('assets/test/TechGear.jpg'),backgroundColor: AppColors.primary,),

      ],

    );
  }
}
