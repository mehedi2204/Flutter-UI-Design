import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/theme_controller.dart';
import '../model/theme_model.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeScreen extends StatelessWidget {
  final ThemeController _themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    Brightness deviceTheme = MediaQuery.of(context).platformBrightness;
    ThemeType selectedTheme =
    (deviceTheme == Brightness.dark) ? ThemeType.DARK : ThemeType.LIGHT;
    _themeController.updateTheme(selectedTheme);

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isWideScreen = constraints.maxWidth > constraints.maxHeight;

          return Stack(
            children: [
              // Main content
              if (isWideScreen)
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'MD Mehedi Hasan',
                        style: TextStyle(
                          fontSize: 55,
                          color: Colors.deepPurpleAccent.withOpacity(0.9),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Typewriter animated text using AnimatedTextKit
                      if (selectedTheme == ThemeType.DARK)
                        AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText(
                              'Flutter Application Developer',
                              textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                              speed: Duration(milliseconds: 100),
                            ),
                          ],
                          repeatForever: true,
                        ),
                      if (selectedTheme == ThemeType.LIGHT)
                        AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText(
                              'Flutter Application Developer',
                              textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                              speed: Duration(milliseconds: 100),
                            ),
                          ],
                          repeatForever: true,
                        ),
                    ],
                  ),
                ),
              if (!isWideScreen)
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(
                            'assets/images/MD Mehedi Hasan.jpg'), // Replace with your image
                      ),
                      SizedBox(height: 30),
                      Divider(),
                      Text(
                        'MD Mehedi Hasan',
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.deepPurpleAccent.withOpacity(0.9),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Typewriter animated text using AnimatedTextKit
                      if (selectedTheme == ThemeType.DARK)
                        AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText(
                              'Flutter Application Developer',
                              textStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                              speed: Duration(milliseconds: 100),
                            ),
                          ],
                          repeatForever: true,
                        ),
                      if (selectedTheme == ThemeType.LIGHT)
                        AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText(
                              'Flutter Application Developer',
                              textStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                              speed: Duration(milliseconds: 100),
                            ),
                          ],
                          repeatForever: true,
                        ),

                    ],
                  ),
                ),

              // Sidebar container
              if (isWideScreen) // Show sidebar on the left for wide screens
                Positioned(
                  left: 0,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    width: 150, // Adjust sidebar width as needed
                    color: Colors.black45,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //SizedBox(height: 20),
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage(
                              'assets/images/MD Mehedi Hasan.jpg'), // Replace with your image
                        ),
                        SizedBox(height: 30),
                        Text(
                          'MD Mehedi Hasan', // Replace with your name
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.deepPurpleAccent.withOpacity(0.9),
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 50),
                        Divider(
                          color: Colors.deepPurpleAccent.withOpacity(0.4),
                        ),
                        SidebarButton(
                          text: 'Home',
                          onPressed: () {
                            // Navigate to the home screen
                            // You can use Get.to(HomeScreen()) if you're using GetX for navigation
                          },
                        ),
                        Divider(
                          color: Colors.deepPurpleAccent.withOpacity(0.4),
                        ),
                        SidebarButton(
                          text: 'About Me',
                          onPressed: () {
                            // Show the About Me section
                            // You can implement navigation logic or slider visibility here
                          },
                        ),
                        Divider(
                          color: Colors.deepPurpleAccent.withOpacity(0.4),
                        ),
                        SidebarButton(
                          text: 'Resume',
                          onPressed: () {
                            // Show the Resume section
                            // You can implement navigation logic or slider visibility here
                          },
                        ),
                        Divider(
                          color: Colors.deepPurpleAccent.withOpacity(0.4),
                        ),
                        SidebarButton(
                          text: 'Portfolio',
                          onPressed: () {
                            // Show the Portfolio section
                            // You can implement navigation logic or slider visibility here
                          },
                        ),
                        Divider(
                          color: Colors.deepPurpleAccent.withOpacity(0.4),
                        ),
                        SidebarButton(
                          text: 'Contact',
                          onPressed: () {
                            // Show the Contact section
                            // You can implement navigation logic or slider visibility here
                          },
                        ),
                        Divider(
                          color: Colors.deepPurpleAccent.withOpacity(0.4),
                        ),
                      ],
                    ),
                  ),
                ),
              if (!isWideScreen) // Show sidebar on the top for narrow screens
                Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  child: Container(
                    height: 100, // Adjust sidebar height as needed
                    color: Colors.black87,
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}

class SidebarButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const SidebarButton({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
      style: ButtonStyle(
        overlayColor: MaterialStateColor.resolveWith(
                (states) => Colors.white.withOpacity(0.1)), // Hover indicator
        padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(vertical: 10, horizontal: 20)),
      ),
    );
  }
}
