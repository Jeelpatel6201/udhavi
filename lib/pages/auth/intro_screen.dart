import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:udhavi/constant/app_color.dart';
import 'package:udhavi/constant/app_image.dart';
import 'package:udhavi/constant/app_text_style.dart';
import 'package:udhavi/pages/auth/onbonding_screen.dart';
import 'package:udhavi/widgets/custom_button.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30, right: 30),
                  child: Icon(
                    CupertinoIcons.question_circle,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 150,
            ),
            SvgPicture.asset(AppImages.introScreen),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Great! Congratulation on being a part of the 1 million strong volunteering family!",
                style: poppinsStyle.copyWith(color: whiteColor),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            CustomButton(
              text: "Watch Tutorial",
              colors: 0xffE73F3F,
              backColor: 0xffFFFFFF,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              text: "Get Started",
              colors: 0xffE73F3F,
              backColor: 0xffFFFFFF,
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnBondingScreen(),
                    ),
                    (route) => false);
              },
            ),
            const SizedBox(
              height: 60,
            ),
            Text(
              'Select Language?',
            style: poppinsCustom.copyWith(
                color: whiteColor, fontSize: 17, fontWeight: FontWeight.w600
            ),

            ),
            Text(
              'English',
              style: poppinsCustom.copyWith(
                  color: whiteColor, fontSize: 15, fontWeight: FontWeight.w200),
            ),
          ],
        ),
      ),
    );
  }
}
