import 'package:flutter/material.dart';
import 'package:udhavi/constant/app_color.dart';
import 'package:udhavi/constant/app_image.dart';
import 'package:udhavi/constant/app_text_style.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Card(
        shadowColor: Colors.black,
        elevation: 3,
        color: const Color(0xffFFFFFF),
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.calendar),
                  Text(
                    "JAN",
                    style: poppinsStyleBlack.copyWith(
                        fontWeight: FontWeight.w900),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(AppImages.blood),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Need: O+",
                      style: poppinsCustom.copyWith(
                          color: backgroundColor,
                          fontWeight: FontWeight.w900,
                          fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Location: Egmore",
                  style: poppinsCustom.copyWith(
                      fontWeight: FontWeight.w900),
                ),
                Text(
                  "Patient Age: 56",
                  style: poppinsCustom.copyWith(
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
            const SizedBox(
              width: 100,
            ),
            SizedBox(
              height: 100,
              width: 100,
              // color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: backgroundColor,
                      ),
                      child: Center(
                        child: Text(
                          "Submitted",
                          style: poppinsCustom.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Icon(
                      Icons.phone,
                      color: backgroundColor,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
