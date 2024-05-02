import 'package:flutter/material.dart';
import 'package:udhavi/constant/app_color.dart';
import 'package:udhavi/constant/app_text_style.dart';
import 'package:udhavi/widgets/custom_app_bar.dart';
import 'package:udhavi/widgets/text_form_fiels.dart';

class RegisterScreen extends StatefulWidget {



  var number;
  RegisterScreen({super.key, this.number});
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, right: 40),
            child: Text(
              "As a first-time user, please enter your details.",
              style: poppinsStyle,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          CustomTextFomField(
            initialValue: widget.number,
            labelText: 'Phone Number',
            keyboardType: TextInputType.number,
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextFomField(
            labelText: "Name",
            controller: nameController,
            keyboardType: TextInputType.name,
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Location',
                style: poppinsCustom.copyWith(fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.my_location,
                    color: backgroundColor,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Use your current location',
                    style: poppinsCustom.copyWith(
                        fontWeight: FontWeight.w600, color: backgroundColor),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
