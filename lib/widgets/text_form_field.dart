import 'package:flutter/material.dart';
import 'package:udhavi/constant/app_color.dart';
import 'package:udhavi/constant/app_size.dart';
import 'package:udhavi/constant/app_text_style.dart';

class CustomTextFomField extends StatelessWidget {
  CustomTextFomField({
    super.key,
    this.controller,
    this.labelText,
    this.keyboardType,
    this.initialValue,
    this.enabled,
    this.prefixIcon,
    this.hintText,
    this.hintStyle,
    this.validator,
  });

  TextEditingController? controller;
  String? labelText;
  TextInputType? keyboardType;
  String? initialValue;
  bool? enabled;
  Widget? prefixIcon;
  String? hintText;
  TextStyle? hintStyle;
  String? Function(String?)? validator;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: TextFormField(
        controller: controller,
        cursorColor: Colors.black,
        enabled: enabled,
        keyboardType: keyboardType,
        initialValue: initialValue,
        style: poppinsCustom.copyWith(
            fontWeight: FontWeight.w600, color: greyColor),
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          contentPadding: const EdgeInsets.all(17),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius10),
          ),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(radius10)),
          labelText: labelText,
          labelStyle: poppinsCustom.copyWith(
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
          hintText: hintText,
          hintStyle: poppinsCustom.copyWith(
            fontWeight: FontWeight.w900,
            color: Colors.grey,
          ),
        ),
        validator: validator,
      ),
    );
  }
}
