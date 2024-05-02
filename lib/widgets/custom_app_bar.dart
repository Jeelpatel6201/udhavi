import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udhavi/constant/app_color.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: backgroundColor, size: 30), // Adjust color as needed
      backgroundColor: Colors.white,
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: Icon(
            CupertinoIcons.question_circle,
            color: backgroundColor
          ),
        ),
      ],
    );
  }
}
