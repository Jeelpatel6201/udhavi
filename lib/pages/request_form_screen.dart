import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udhavi/constant/app_color.dart';
import 'package:udhavi/constant/app_text_style.dart';
import 'package:udhavi/pages/select_category_screen.dart';
import 'package:udhavi/splash_screen.dart';
import 'package:udhavi/widgets/custom_app_bar.dart';
import 'package:udhavi/widgets/custom_button.dart';
import 'package:udhavi/widgets/text_form_field.dart';

class RequestFromScreen extends StatefulWidget {
  const RequestFromScreen({super.key});

  @override
  State<RequestFromScreen> createState() => _RequestFromScreenState();
}

class _RequestFromScreenState extends State<RequestFromScreen> {
  TextEditingController number = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController bloodGroup = TextEditingController();
  TextEditingController req = TextEditingController();

  GlobalKey<FormState> FormKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      backgroundColor: Colors.white,
      body: Form(
        key: FormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Request Details",
                style: poppinsStyleBlack,
              ),
            ),
            CustomTextFomField(
              labelText: "Attender Contact",
              hintText: "Phone Number",
              keyboardType: TextInputType.number,
              controller: number,
              validator: (p0) {
                if (p0!.isEmpty) {
                  return "Please Enter Number";
                }
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFomField(
              labelText: "Patient Name",
              keyboardType: TextInputType.name,
              controller: name,
              validator: (p0) {
                if (p0!.isEmpty) {
                  return "Please Enter Name";
                }
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFomField(
              labelText: "Patient Age",
              keyboardType: TextInputType.number,
              controller: age,
              validator: (p0) {
                if (p0!.isEmpty) {
                  return "Please Enter Age";
                }
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFomField(
              hintText: "Blood Group Needed",
              keyboardType: TextInputType.name,
              controller: bloodGroup,
              validator: (p0) {
                if (p0!.isEmpty) {
                  return "Please Enter BloodGroup";
                }
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFomField(
              labelText: "Units Req",
              keyboardType: TextInputType.number,
              controller: req,
              validator: (p0) {
                if (p0!.isEmpty) {
                  return "Please Enter REQ";
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 20),
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffF0F0F0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, left: 20),
                          child: Text(
                            "Date",
                            style:
                                poppinsCustom.copyWith(color: backgroundColor),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 100.0),
                          child: Icon(
                            Icons.calendar_today,
                            color: backgroundColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 80,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffF0F0F0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, left: 20),
                          child: Text(
                            "Time",
                            style:
                                poppinsCustom.copyWith(color: backgroundColor),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 100.0),
                          child: Icon(
                            CupertinoIcons.clock,
                            color: backgroundColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            CustomButton(
              text: "Next",
              backColor: 0xffE73F3F,
              colors: 0xffFFFFFF,
              onTap: () {
                if (FormKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SelectCategoryScreen(),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
