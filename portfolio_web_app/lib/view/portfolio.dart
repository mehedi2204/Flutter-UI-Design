import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controller/download_file.dart';
import '../controller/theme_controller.dart';
import '../model/theme_model.dart';
import 'app_color.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  final ThemeController _themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    Brightness deviceTheme = MediaQuery.of(context).platformBrightness;
    ThemeType selectedTheme =
        (deviceTheme == Brightness.dark) ? ThemeType.DARK : ThemeType.LIGHT;
    _themeController.updateTheme(selectedTheme);

    final screenSize = MediaQuery.of(context).size;

    if (screenSize.width < 600) {
      return PortfolioMobileScreen();
    } else if (screenSize.width < 1200) {
      return PortfolioTabletScreen();
    } else {
      return PortfolioDesktopScreen();
    }
  }
}

class PortfolioMobileScreen extends StatefulWidget {
  const PortfolioMobileScreen({super.key});

  @override
  State<PortfolioMobileScreen> createState() => _PortfolioMobileScreenState();
}

class _PortfolioMobileScreenState extends State<PortfolioMobileScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class PortfolioTabletScreen extends StatefulWidget {
  const PortfolioTabletScreen({super.key});

  @override
  State<PortfolioTabletScreen> createState() => _PortfolioTabletScreenState();
}

class _PortfolioTabletScreenState extends State<PortfolioTabletScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class PortfolioDesktopScreen extends StatefulWidget {
  const PortfolioDesktopScreen({super.key});

  @override
  State<PortfolioDesktopScreen> createState() => _PortfolioDesktopScreenState();
}

class _PortfolioDesktopScreenState extends State<PortfolioDesktopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return Stack(children: [
          SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                  padding: EdgeInsets.all(40),
                  child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 10),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    child: Text(
                                      'Portfolio',
                                      style: TextStyle(
                                        fontSize: 60,
                                        color: Colors.grey.shade600,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 2,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 110,
                                    height: 30,
                                    color: AppColors.primaryColor,
                                    child: Center(
                                      child: Text(
                                        textWidthBasis: TextWidthBasis.longestLine,
                                        textAlign: TextAlign.center,
                                        'My Best Work',
                                        style: TextStyle(
                                            fontSize: 15, fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                            SizedBox(height: 40),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    left: BorderSide(
                                                      color: AppColors.primaryColor,
                                                      width: 2.5,
                                                    ))),
                                            padding: EdgeInsets.only(left: 10),
                                            child: Text(
                                              "'Smart CRM' Flutter Android App",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 30),
                                          Padding(
                                            padding: EdgeInsets.only(left: 13.0),
                                            child: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Introducing our cutting-edge CRM mobile app designed to revolutionize your business operations. With intuitive features, seamless integration, and real-time data access, our app empowers you to manage customer relationships on the go. Boost productivity, enhance customer engagement, and drive growth with our user-friendly CRM solution. Experience the future of business management today!",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w400,
                                                      fontStyle: FontStyle.italic
                                                    ),
                                                    textAlign: TextAlign.justify,
                                                  ),
                                                  SizedBox(height: 20),
                                                  Text("Technology Stack",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),
                                                  SizedBox(height: 5),
                                                  Text("The 'Smart CRM' Flutter Android app uses Flutter and Dart for cross-platform development. It employs GetX for state management and navigation, integrates with REST APIs for data exchange, and utilizes Git for version control and collaboration.",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                    textAlign: TextAlign.justify,
                                                  ),
                                                  SizedBox(height: 20),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      InkWell(
                                                        onTap: () {
                                                          launchUrl(Uri.parse('https://github.com/mehedi2204/Flutter-Project-Creative-Software-/tree/main/CRM'));
                                                        },
                                                        splashColor: AppColors.primaryColor,
                                                        //hoverColor: AppColors.primaryColor,
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                            border: Border(
                                                              bottom: BorderSide(
                                                                color: AppColors.primaryColor,
                                                              )
                                                            )
                                                          ),
                                                          child: Text('Github Repository',
                                                          ),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          showDialog(
                                                            context: context,
                                                            builder: (BuildContext context) {
                                                              return AlertDialog(
                                                                title: Center(child: Text("Smart CRM' Flutter Android App")),
                                                                content: SingleChildScrollView(
                                                                  scrollDirection: Axis.vertical,
                                                                  physics: BouncingScrollPhysics(),
                                                                  child: ListBody(
                                                                    children: [
                                                                      Image.asset('assets/images/crm.png'),
                                                                      Image.asset('assets/images/crm.png'),
                                                                    ],
                                                                  ),
                                                                ),
                                                                actions: [
                                                                  ElevatedButton(
                                                                    onPressed: () {
                                                                      // Perform action when 'OK' is pressed
                                                                      Navigator.of(context).pop();
                                                                    },
                                                                    child: Text('OK'),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          );
                                                        },
                                                        splashColor: AppColors.primaryColor,
                                                        //hoverColor: AppColors.primaryColor,
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                              border: Border(
                                                                  bottom: BorderSide(
                                                                    color: AppColors.primaryColor,
                                                                  )
                                                              )
                                                          ),
                                                          child: Text('See Screens',
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 20),
                                                  InkWell(
                                                    onTap: () {
                                                      _downloadSmartCRM();
                                                    },
                                                    splashColor: AppColors.primaryColor,
                                                    hoverColor: Colors.grey.withOpacity(0.2),
                                                    child: Container(
                                                      alignment: Alignment.center,
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                          color: AppColors.primaryColor,
                                                        ),
                                                        borderRadius: BorderRadius.circular(5),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Text('Download APK', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ]
                                    ),
                                  ),
                                  SizedBox(width: 40),
                                  Expanded(
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    left: BorderSide(
                                                      color: AppColors.primaryColor,
                                                      width: 2.5,
                                                    ))),
                                            padding: EdgeInsets.only(left: 10),
                                            child: Text(
                                              "'Easy Somity' Flutter Android App",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 30),
                                          Padding(
                                            padding: EdgeInsets.only(left: 13.0),
                                            child: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Easy Somity is a Flutter-based mobile application developed for our client, offering a user-friendly interface with customizable settings. Utilizing Dart programming and REST API integration, the app ensures seamless performance, secure data handling, and real-time updates, enhancing operational efficiency and user experience.",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.w400,
                                                        fontStyle: FontStyle.italic
                                                    ),
                                                    textAlign: TextAlign.justify,
                                                  ),
                                                  SizedBox(height: 20),
                                                  Text("Technology Stack",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),
                                                  SizedBox(height: 5),
                                                  Text("The 'Easy Somity' Flutter app uses Flutter, Dart, GetX for state management and navigation, REST API integration for real-time updates and secure data handling, Git for version control, and includes an additional feature for POS printing via Bluetooth connection.",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                    textAlign: TextAlign.justify,
                                                  ),
                                                  SizedBox(height: 20),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      InkWell(
                                                        onTap: () {
                                                          launchUrl(Uri.parse('https://github.com/mehedi2204/Flutter-Project-Creative-Software-/tree/main/Easy_Somity'));
                                                        },
                                                        splashColor: AppColors.primaryColor,
                                                        //hoverColor: AppColors.primaryColor,
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                              border: Border(
                                                                  bottom: BorderSide(
                                                                    color: AppColors.primaryColor,
                                                                  )
                                                              )
                                                          ),
                                                          child: Text('Github Repository',
                                                          ),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          //launchUrl(Uri.parse('https://github.com/mehedi2204/Flutter-Project-Creative-Software-/tree/main/CRM'));
                                                        },
                                                        splashColor: AppColors.primaryColor,
                                                        //hoverColor: AppColors.primaryColor,
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                              border: Border(
                                                                  bottom: BorderSide(
                                                                    color: AppColors.primaryColor,
                                                                  )
                                                              )
                                                          ),
                                                          child: Text('See Screens',
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 20),
                                                  InkWell(
                                                    onTap: () {
                                                      _downloadEasySomity();
                                                    },
                                                    splashColor: AppColors.primaryColor,
                                                    hoverColor: Colors.grey.withOpacity(0.2),
                                                    child: Container(
                                                      alignment: Alignment.center,
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                          color: AppColors.primaryColor,
                                                        ),
                                                        borderRadius: BorderRadius.circular(5),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Text('Download APK', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ]
                                    ),
                                  ),
                                  SizedBox(width: 40),
                                  Expanded(
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    left: BorderSide(
                                                      color: AppColors.primaryColor,
                                                      width: 2.5,
                                                    ))),
                                            padding: EdgeInsets.only(left: 10),
                                            child: Text(
                                              "'Dokan Pos Pharmacy' Flutter Android App",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 30),
                                          Padding(
                                            padding: EdgeInsets.only(left: 13.0),
                                            child: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Dokan Pos Pharmacy is a cutting-edge Flutter mobile application designed and developed by me during my tenure at Creative Software Company for our esteemed client. This innovative app serves as a comprehensive Point of Sale (POS) solution tailored specifically for pharmacies, offering seamless and efficient management of inventory, sales, and customer information.",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.w400,
                                                        fontStyle: FontStyle.italic
                                                    ),
                                                    textAlign: TextAlign.justify,
                                                  ),
                                                  SizedBox(height: 20),
                                                  Text("Technology Stack",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),
                                                  SizedBox(height: 5),
                                                  Text("The 'Dokan Pos Pharmacy' Flutter Android app uses Flutter and Dart for cross-platform development. It employs GetX for state management and navigation, integrates with REST APIs for data exchange, and utilizes Git for version control and collaboration.",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                    textAlign: TextAlign.justify,
                                                  ),
                                                  SizedBox(height: 20),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      InkWell(
                                                        onTap: () {
                                                          launchUrl(Uri.parse('https://github.com/mehedi2204/Flutter-Project-Creative-Software-/tree/main/Dokan_Pos_Pharmacy'));
                                                        },
                                                        splashColor: AppColors.primaryColor,
                                                        //hoverColor: AppColors.primaryColor,
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                              border: Border(
                                                                  bottom: BorderSide(
                                                                    color: AppColors.primaryColor,
                                                                  )
                                                              )
                                                          ),
                                                          child: Text('Github Repository',
                                                          ),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          //launchUrl(Uri.parse('https://github.com/mehedi2204/Flutter-Project-Creative-Software-/tree/main/CRM'));
                                                        },
                                                        splashColor: AppColors.primaryColor,
                                                        //hoverColor: AppColors.primaryColor,
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                              border: Border(
                                                                  bottom: BorderSide(
                                                                    color: AppColors.primaryColor,
                                                                  )
                                                              )
                                                          ),
                                                          child: Text('See Screens',
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 20),
                                                  InkWell(
                                                    onTap: () {
                                                      _downloadDokanPosPharmacy();
                                                    },
                                                    splashColor: AppColors.primaryColor,
                                                    hoverColor: Colors.grey.withOpacity(0.2),
                                                    child: Container(
                                                      alignment: Alignment.center,
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                          color: AppColors.primaryColor,
                                                        ),
                                                        borderRadius: BorderRadius.circular(5),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Text('Download APK', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ]
                                    ),
                                  ),
                                ]
                            ),
                      ]
                      )
                  )
              )
          )
        ]);
      }),
    );
  }

  Future<void> _downloadSmartCRM() async {
    String assetPath = 'assets/file_for_download/MD Mehedi Hasan (CV).pdf';
    String fileName = 'MD Mehedi Hasan (CV).pdf';
    await downloadFile(context, assetPath, fileName); // Call the function from the imported file
  }

  Future<void> _downloadEasySomity() async {
    String assetPath = 'assets/file_for_download/MD Mehedi Hasan (CV).pdf';
    String fileName = 'MD Mehedi Hasan (CV).pdf';
    await downloadFile(context, assetPath, fileName); // Call the function from the imported file
  }

  Future<void> _downloadDokanPosPharmacy() async {
    String assetPath = 'assets/file_for_download/MD Mehedi Hasan (CV).pdf';
    String fileName = 'MD Mehedi Hasan (CV).pdf';
    await downloadFile(context, assetPath, fileName); // Call the function from the imported file
  }
}
