import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/root.dart';
import 'core/constans/app_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:animate_do/animate_do.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 800),
          pageBuilder: (_, __, ___) =>  Root(),
          transitionsBuilder: (_, animation, __, child) {
            return FadeTransition(
              opacity: animation,
              child: ScaleTransition(
                scale: Tween<double>(begin: 0.95, end: 1).animate(animation),
                child: child,
              ),
            );
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: ZoomIn(
        duration: const Duration(milliseconds: 900),
        child: Column(
          children: [
            const Gap(220),

            /// LOGO (Bounce + Pulse)
            BounceInDown(
              duration: const Duration(milliseconds: 1200),
              child: Pulse(
                infinite: true,
                duration: const Duration(seconds: 2),
                child: SvgPicture.asset(
                  'assets/logo/Logo_hungry.svg',
                  width: 180,
                ),
              ),
            ),

            const Spacer(),

            /// Bottom Image (Elastic Slide)
            ElasticInUp(
              duration: const Duration(milliseconds: 1400),
              child: FadeIn(
                delay: const Duration(milliseconds: 400),
                child: Image.asset(
                  "assets/splash/splash_berger.png",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
