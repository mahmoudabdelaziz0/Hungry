import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'core/constans/app_color.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Gap(250),
      SvgPicture.asset('assets/logo/Logo_hungry.svg'),
      Spacer(),
      Image.asset("assets/splash/splash_berger.png"),

    ],
  ),
),

    );
  }
}
