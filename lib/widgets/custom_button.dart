import 'package:flutter/material.dart';
import 'package:udhavi/constant/app_color.dart';
import 'package:udhavi/constant/app_text_style.dart';

class CustomButton extends StatelessWidget {
  String? text;
  Function()? onTap;
  int? colors;
  int? backColor;
  BoxBorder? border;
  CustomButton(
      {super.key,
      this.text,
      this.onTap,
      this.colors,
      this.backColor,
      this.border});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Center(
        child: Container(
          height: 70,
          width: 330,
          decoration: BoxDecoration(
            color: Color(backColor!),
            borderRadius: BorderRadius.circular(10),
            border: border,
          ),
          child: Center(
              child: Text("$text",
                  style: poppinsStyle.copyWith(
                    color: Color(colors!),
                  ))),
        ),
      ),
    );
  }
}

class CustomContainerCategory extends StatelessWidget {
  DecorationImage? image;
  String? text;

  CustomContainerCategory({super.key, this.image, this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: 100,
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: backgroundColor),
              image: image,
            ),
          ),
          Expanded(
              child: Text(
            text ?? "",
            style: poppinsStyleBlack,
          )),
        ],
      ),
    );
  }
}
