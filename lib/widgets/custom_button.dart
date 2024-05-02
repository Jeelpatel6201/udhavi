import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udhavi/constant/app_text_style.dart';

class CustomButton extends StatelessWidget {
  String? text;
  Function()? onTap;
  int? colors;
  int? backColor;
  CustomButton({super.key, this.text, this.onTap,  this.colors, this.backColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 70,
        width: 330,
        decoration: BoxDecoration(
          color: Color(backColor!),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Text(
              "$text",
              style: poppinsStyle.copyWith(
                  color:  Color(colors!),
              )
            )),
      ),
    );
  }
}
