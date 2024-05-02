import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_web_app/view/about_me.dart';
import 'package:portfolio_web_app/view/contact.dart';
import 'package:portfolio_web_app/view/drawer.dart';
import 'package:portfolio_web_app/view/portfolio.dart';
import 'package:portfolio_web_app/view/resume.dart';

import '../controller/theme_controller.dart';
import '../model/theme_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final ThemeController _themeController = Get.find();

  int selectedIndex = 0;

  void selectScreen(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Brightness deviceTheme = MediaQuery.of(context).platformBrightness;
    ThemeType selectedTheme =
        (deviceTheme == Brightness.dark) ? ThemeType.DARK : ThemeType.LIGHT;
    _themeController.updateTheme(selectedTheme);

    return Scaffold(
      key: _scaffoldKey,
      drawer: AppDrawer(
        onItemSelected: selectScreen,
        selectedIndex: selectedIndex,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isWideScreen = constraints.maxWidth > constraints.maxHeight;

          return Stack(
            children: [
              // Main content
              if (isWideScreen)
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Sidebar
                    Container(
                      width: 150,
                      height: double.infinity,
                      color: Colors.grey.shade900,
                      child: Center(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 60,
                                backgroundColor:
                                    Colors.deepOrangeAccent.withOpacity(0.9),
                                backgroundImage: AssetImage(
                                    'assets/images/MD Mehedi Hasan.jpg'), // Replace with your image
                              ),
                              SizedBox(height: 30),
                              Text(
                                'MD Mehedi Hasan', // Replace with your name
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 40),
                              // Sidebar menu items
                              for (int i = 0; i < 5; i++)
                                InkWell(
                                  onTap: () => selectScreen(i),
                                  hoverColor:
                                      Colors.deepOrangeAccent.withOpacity(0.9),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: selectedIndex == i
                                          ? Colors.deepOrangeAccent
                                              .withOpacity(0.9)
                                          : Colors.transparent,
                                      border: Border(
                                        top: BorderSide(
                                          color: Colors.deepOrangeAccent
                                              .withOpacity(0.2),
                                          width: 1.0,
                                        ),
                                      ),
                                    ),
                                    width: 150,
                                    child: Column(
                                      children: [
                                        SizedBox(height: 10),
                                        getIcon(i),
                                        Text(
                                          getTitle(i),
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                      ],
                                    ),
                                  ),
                                ),
                              Container(
                                  width: 150,
                                  decoration: BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                      color: Colors.deepOrangeAccent
                                          .withOpacity(0.2),
                                      width: 1.0,
                                    )),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Main content based on selected index
                    Container(
                      width: constraints.maxWidth - 150,
                      height: double.infinity,
                      child: getContent(selectedIndex),
                    ),
                  ],
                ),

              if (!isWideScreen)
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Mobile header
                    Container(
                      width: double.infinity,
                      height: 60,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        _scaffoldKey.currentState!.openDrawer();
                                      },
                                      icon: Icon(
                                        Icons.menu,
                                        size: 28,
                                        //color: Colors.white,
                                      )),
                                  SizedBox(width: 20),
                                  Text(
                                    'MD Mehedi Hasan',
                                    style: TextStyle(
                                      //color: Colors.white,
                                      fontSize: 24,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.only(right: 20),
                            //   child: Row(
                            //     children: [
                            //       CircleAvatar(
                            //         radius: 20,
                            //         backgroundImage: AssetImage(
                            //             'assets/images/MD Mehedi Hasan.jpg'),
                            //       ),
                            //     ],
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                    // Main content based on selected index
                    Container(
                      width: double.infinity,
                      height: constraints.maxHeight - 80,
                      child: getContent(selectedIndex),
                    ),
                  ],
                ),
            ],
          );
        },
      ),
    );
  }

  // Function to get content based on selected index
  Widget getContent(int index) {
    switch (index) {
      case 0:
        return HomeContent();
      case 1:
        return AboutMe();
      case 2:
        return ResumeScreen();
      case 3:
        return PortfolioScreen();
      case 4:
        return ContactScreen();
      // Add more cases for other sections
      default:
        return Container(); // Empty container if index is invalid
    }
  }
}

// Function to get icon for each section
Icon getIcon(int index) {
  switch (index) {
    case 0:
      return Icon(Icons.home_outlined, size: 20, color: Colors.white,);
    case 1:
      return Icon(Icons.person_outline, size: 20, color: Colors.white,);
    case 2:
      return Icon(Icons.description_outlined, size: 20, color: Colors.white,);
    case 3:
      return Icon(Icons.work_outline, size: 20, color: Colors.white,);
    case 4:
      return Icon(Icons.email_outlined, size: 20, color: Colors.white,);
    // Add more cases for other sections
    default:
      return Icon(Icons.error_outline, size: 20); // Default icon
  }
}

// Function to get title for each section
String getTitle(int index) {
  switch (index) {
    case 0:
      return 'Home';
    case 1:
      return 'About Me';
    case 2:
      return 'Resume';
    case 3:
      return 'Portfolio';
    case 4:
      return 'Contact';
    // Add more cases for other sections
    default:
      return 'Section $index'; // Default title
  }
}

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  final ThemeController _themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    Brightness deviceTheme = MediaQuery.of(context).platformBrightness;
    ThemeType selectedTheme =
        (deviceTheme == Brightness.dark) ? ThemeType.DARK : ThemeType.LIGHT;
    _themeController.updateTheme(selectedTheme);

    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
      bool isWideScreen = constraints.maxWidth > constraints.maxHeight;

      return Stack(children: [
        if (isWideScreen)
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'MD Mehedi Hasan',
                  style: TextStyle(
                    fontSize: 55,
                    color: Colors.deepOrangeAccent.withOpacity(0.9),
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
                    color: Colors.deepOrangeAccent.withOpacity(0.9),
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
      ]);
    }));
  }
}
