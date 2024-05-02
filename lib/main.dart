import 'package:flutter/material.dart';
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
