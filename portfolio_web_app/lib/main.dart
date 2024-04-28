// main.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_web_app/view/home_screen.dart';
import 'controller/theme_controller.dart';

void main() {
  Get.put(ThemeController()); // Initialize ThemeController
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blank Screen App',
      theme: ThemeData.light(), // Default light theme
      darkTheme: ThemeData.dark(), // Default dark theme
      home: HomeScreen(),
    );
  }
}
