import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:udhavi/constant/app_color.dart';
import 'package:udhavi/constant/app_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:udhavi/constant/app_text_style.dart';
import 'package:udhavi/pages/auth/login_screen.dart';
import 'package:udhavi/widgets/custom_button.dart';

class OnBondingScreen extends StatefulWidget {
  const OnBondingScreen({super.key});

  @override
  State<OnBondingScreen> createState() => _OnBondingScreenState();
}

class _OnBondingScreenState extends State<OnBondingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: SvgPicture.asset(AppImages.uImage, color: backgroundColor),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 30.0),
            child: Icon(
              CupertinoIcons.question_circle,
              color: backgroundColor,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Join Udhavi Community.",
                  style: poppinsStyleBlack,
                ),
                Text(
                  "Let’s make the world better together.",
                  style: poppinsStyleBlack,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("“By the people, for the people, to the people.”",
                    style: poppinsStyle),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DottedBorder(
                borderType: BorderType.Circle,
                color: const Color(0xff7CBD29),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: const Color(0xff7CBD29),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                        child: Text(
                      "1005",
                      style: poppinsCustom.copyWith(
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "of volunteers",
                style: poppinsCustom.copyWith(color: const Color(0xff7CBD29)),
              ),
              const SizedBox(
                width: 10,
              ),
              DottedBorder(
                borderType: BorderType.Circle,
                color: backgroundColor,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                        child: Text(
                      "546",
                      style: poppinsCustom.copyWith(
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "request served",
                style: poppinsCustom.copyWith(color: backgroundColor),

              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Image.asset(AppImages.onBondingScreen),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ));
            },
            text: 'I like to volunteer',
            backColor: 0xffE73F3F,
            colors: 0xffFFFFFF,
          ),
          const SizedBox(
            height: 50,
          ),
          SvgPicture.asset(AppImages.onBondingScreen2),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            text: 'I need help',
            backColor: 0xffE73F3F,
            colors: 0xffFFFFFF,
          ),
        ],
      ),
    );
  }
}
