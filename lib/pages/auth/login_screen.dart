import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:udhavi/constant/app_color.dart';
import 'package:udhavi/constant/app_image.dart';
import 'package:udhavi/constant/app_text_style.dart';
import 'package:udhavi/main.dart';
import 'package:udhavi/pages/auth/register_screen.dart';
import 'package:udhavi/widgets/custom_app_bar.dart';
import 'package:udhavi/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Center(
                child: Text(
              "Welcome to Udhavi community",
              style: poppinsStyleBlack,
            )),
            const SizedBox(
              height: 50,
            ),
            Center(child: Image.asset(AppImages.loginScreen)),
            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 50),
              child: Text(
                "Enter your phone number",
                style: poppinsStyle.copyWith(color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: IntlPhoneField(
                controller: controller,
                cursorColor: Colors.black,
                style: poppinsStyleBlack,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: greyColor),
                  ),
                ),
                languageCode: "en",
                onChanged: (phone) {
                  setState(() {
                    inputText = controller.text.toString();
                  });
                },
                onCountryChanged: (country) {},
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: CustomButton(
                onTap: () {
                  print("------------$inputText");
                  if (inputText.length == 10) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterScreen(number: inputText),
                      ),
                    );
                  }
                },
                text: "Send OTP",
                backColor: 0xffE73F3F,
                colors: 0xffFFFFFF,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
