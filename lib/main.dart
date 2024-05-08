import 'package:flutter/material.dart';
import 'package:udhavi/pages/home_page.dart';
import 'package:udhavi/pages/request_form_screen.dart';
import 'package:udhavi/pages/select_category_screen.dart';
import 'package:udhavi/splash_screen.dart';

final TextEditingController controller = TextEditingController();
String inputText = '';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}
