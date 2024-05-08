import 'package:flutter/material.dart';
import 'package:udhavi/constant/app_color.dart';
import 'package:udhavi/constant/app_image.dart';
import 'package:udhavi/constant/app_text_style.dart';
import 'package:udhavi/pages/request_form_screen.dart';
import 'package:udhavi/widgets/custom_app_bar.dart';
import 'package:udhavi/widgets/custom_button.dart';

class SelectCategoryScreen extends StatefulWidget {
  const SelectCategoryScreen({super.key});

  @override
  State<SelectCategoryScreen> createState() => _SelectCategoryScreenState();
}

class _SelectCategoryScreenState extends State<SelectCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Select Category",
              style: poppinsCustom.copyWith(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
            child: Divider(
              height: 40,
              color: backgroundColor,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomContainerCategory(
                text: "Blood",
                image: const DecorationImage(
                  image: AssetImage(
                    AppImages.bloodBag,
                  ),
                ),
              ),
              CustomContainerCategory(
                text: "Food",
                image: const DecorationImage(image: AssetImage(AppImages.food)),
              ),
              CustomContainerCategory(
                text: "Clothes",
                image: const DecorationImage(
                    image: AssetImage(AppImages.clothesRack)),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomContainerCategory(
                text: "Counselling",
                image: const DecorationImage(
                  image: AssetImage(
                    AppImages.appointment,
                  ),
                ),
              ),
              CustomContainerCategory(
                text: "Doctor",
                image: const DecorationImage(
                  image: AssetImage(AppImages.femaleDoctor),
                ),
              ),
              CustomContainerCategory(
                text: "Other",
                image: const DecorationImage(
                  image: AssetImage(AppImages.standUp),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 30),
            child: Text(
              "Blood",
              style: poppinsStyleBlack.copyWith(fontWeight: FontWeight.w900),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0,right: 20),
            child: Text(
              "If you need blood for someone in need please select this",
              style: poppinsStyleBlack.copyWith(fontWeight: FontWeight.w600,fontSize: 20),
            ),
          ),
          const SizedBox(height: 60,),
          CustomButton(
            text: "Next",
            backColor: 0xffE73F3F,
            colors: 0xffFFFFFF,
            onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RequestFromScreen(),
                  ),
                );
            },
          ),
        ],
      ),
    );
  }
}
