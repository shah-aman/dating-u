import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Screen/Intro_screen/intro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: "Sk-Modernist-Regular"),
      debugShowCheckedModeBanner: false,
      title: 'DecentLuv',
      home: const IntroductionScreen(),
    );
  }
}
