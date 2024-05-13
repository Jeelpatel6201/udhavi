import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udhavi/constant/app_color.dart';
import 'package:udhavi/constant/app_text_style.dart';
import 'package:udhavi/pages/select_category_screen.dart';
import 'package:udhavi/widgets/custom_card.dart';
import 'package:udhavi/widgets/text_form_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SelectCategoryScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: backgroundColor,
                    ),
                    child: Center(
                        child: Text(
                      "+ Create Request",
                      style: poppinsCustom.copyWith(
                          color: whiteColor, fontWeight: FontWeight.w600),
                    )),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50.0, right: 20),
                child: Icon(
                  CupertinoIcons.question_circle,
                  color: backgroundColor,
                  size: 30,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFomField(
            labelText: "Search by request name, category, pincode,... ",
            prefixIcon: const Icon(
              Icons.search,
              color: backgroundColor,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const CustomCard(),
          const CustomCard(),
          const CustomCard(),
          const CustomCard(),
          const CustomCard(),
          const CustomCard(),
        ],
      ),
    );
  }
}
