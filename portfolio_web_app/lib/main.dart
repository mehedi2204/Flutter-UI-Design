// main.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion/motion.dart';
import 'package:portfolio_web_app/view/home.dart';
// import 'package:win32/win32.dart';
import 'controller/theme_controller.dart';

// void setWindowTitle(String title) {
//   final window = GetForegroundWindow();
//   final titlePointer = TEXT(title); // Convert the title to a string literal
//   SetWindowText(window, titlePointer);
// }

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Motion.instance.initialize();
  //setWindowTitle("ShowcaseMe");
  Get.put(ThemeController()); // Initialize ThemeController
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ShowcaseMe',
      theme: ThemeData.light(), // Default light theme
      darkTheme: ThemeData.dark(), // Default dark theme
      home: SafeArea(child: HomeScreen()),
    );
  }
}
