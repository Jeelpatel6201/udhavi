import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:udhavi/constant/app_color.dart';
import 'package:udhavi/constant/app_image.dart';
import 'package:udhavi/constant/app_text_style.dart';
import 'package:udhavi/pages/auth/intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const IntroScreen(),
          ),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppImages.uImage),
            Text(
              'Udhavi',
              style: poppinsCustom.copyWith(color: Colors.white,fontSize: 20)
            ),
          ],
        ),
      ),
    );
  }
}
