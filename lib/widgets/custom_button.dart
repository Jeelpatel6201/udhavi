import 'package:flutter/material.dart';
import 'package:udhavi/constant/app_color.dart';
import 'package:udhavi/constant/app_text_style.dart';

class CustomButton extends StatefulWidget {
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
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Center(
        child: Container(
          height: 70,
          width: 330,
          decoration: BoxDecoration(
            color: Color(widget.backColor!),
            borderRadius: BorderRadius.circular(10),
            border: widget.border,
          ),
          child: Center(
              child: Text("${widget.text}",
                  style: poppinsStyle.copyWith(
                    color: Color(widget.colors!),
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
