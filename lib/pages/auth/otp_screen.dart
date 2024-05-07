import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:udhavi/constant/app_color.dart';
import 'package:udhavi/constant/app_text_style.dart';
import 'package:udhavi/pages/home_page.dart';
import 'package:udhavi/pages/select_category_screen.dart';
import 'package:udhavi/widgets/custom_app_bar.dart';
import 'package:udhavi/widgets/custom_button.dart';

class OTPScreen extends StatefulWidget {
  var number;

  OTPScreen({super.key, this.number});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  OtpFieldController otpController = OtpFieldController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      backgroundColor: whiteColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 25),
            child: Text(
              "Verification Code",
              style: poppinsStyleBlack,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 25, right: 40),
            child: Text(
              "Please enter verification code sent to your +91 ${widget.number}",
              style: poppinsCustom.copyWith(
                  color: greyColor, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          OTPTextField(
              controller: otpController,
              length: 4,
              width: MediaQuery.of(context).size.width,
              textFieldAlignment: MainAxisAlignment.spaceEvenly,
              fieldWidth: 45,
              fieldStyle: FieldStyle.box,
              // obscureText: true,
              outlineBorderRadius: 10,
              style: const TextStyle(fontSize: 17),
              onChanged: (pin) {},
              onCompleted: (pin) {}),
          const SizedBox(
            height: 80,
          ),
          CustomButton(
            text: 'Submit',
            colors: 0xffFFFFFF,
            backColor: 0xffE73F3F,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            text: 'Resend',
            colors: 0xff000000,
            backColor: 0xffFFFFFF,
            border: Border.all(color: const Color(0xffE73F3F)),

          ),
        ],
      ),
    );
  }
}
