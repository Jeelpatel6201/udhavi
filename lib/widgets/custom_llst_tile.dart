import 'package:flutter/material.dart';
import 'package:udhavi/constant/app_image.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(AppImages.calendar),
    );
  }
}
