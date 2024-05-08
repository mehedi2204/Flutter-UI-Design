import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/theme_controller.dart';
import '../model/theme_model.dart';
import 'app_color.dart';

class ResumeScreen extends StatefulWidget {
  const ResumeScreen({super.key});

  @override
  State<ResumeScreen> createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
  final ThemeController _themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    Brightness deviceTheme = MediaQuery.of(context).platformBrightness;
    ThemeType selectedTheme =
    (deviceTheme == Brightness.dark) ? ThemeType.DARK : ThemeType.LIGHT;
    _themeController.updateTheme(selectedTheme);

    final screenSize = MediaQuery.of(context).size;

    if (screenSize.width < 600) {
      return ResumeMobileScreen();
    } else if (screenSize.width < 1200) {
      return ResumeTabletScreen();
    } else {
      return ResumeDesktopScreen();
    }
  }
}


class ResumeMobileScreen extends StatefulWidget {
  const ResumeMobileScreen({super.key});

  @override
  State<ResumeMobileScreen> createState() => _ResumeMobileScreenState();
}

class _ResumeMobileScreenState extends State<ResumeMobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return Stack(
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: 10),
                                Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Resume',
                                          style: TextStyle(
                                            fontSize: 60,
                                            color: Colors.grey.shade600,
                                            fontWeight: FontWeight.w700,
                                            letterSpacing: 2,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 155,
                                        height: 30,
                                        color: AppColors.primaryColor,
                                        child: Center(
                                          child: Text(
                                            textWidthBasis: TextWidthBasis.longestLine,
                                            textAlign: TextAlign.center,
                                            '2 Years of Experience',
                                            style: TextStyle(
                                                fontSize: 15, fontWeight: FontWeight.w300),
                                          ),
                                        ),
                                      ),
                                    ]),
                                SizedBox(height: 40),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
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
                                                'Experience',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 30),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 13),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    border: Border(
                                                        left: BorderSide(
                                                          color: Colors.deepOrangeAccent.withOpacity(0.1),
                                                        )
                                                    )
                                                ),
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        color: AppColors.primaryColor,
                                                        child: Padding(
                                                          padding: const EdgeInsets.fromLTRB(20, 00, 05, 3),
                                                          child: Text('AUG 2023 - PRESENT', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                                                        ),
                                                      ),
                                                      SizedBox(height: 15),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 20.0),
                                                        child: Container(
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text('Junior Flutter App Developer', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                                              Text('Creative Software l Panthapath, Dhanmondi, Dhaka', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                              SizedBox(height: 5),
                                                              Text('As a Junior Flutter Mobile App Developer at Creative Software, I collaborated closely with a skilled team to deliver high-quality mobile applications. Leveraging REST API integration, various libraries, and state management with GetX, I ensured the smooth functionality and user experience of projects like CRM, Easy Somity, and Ababil Courier. Embracing MVC and MVVM architecture principles, I contributed to creating robust and scalable solutions. This role provided me with invaluable insights into the software development lifecycle and enhanced my ability to meet project deadlines effectively.',
                                                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200, fontStyle: FontStyle.italic), textAlign: TextAlign.justify,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      )
                                                    ]
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 50),
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
                                                'Education',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 30),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 13),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    border: Border(
                                                        left: BorderSide(
                                                          color: Colors.deepOrangeAccent.withOpacity(0.1),
                                                        )
                                                    )
                                                ),
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        color: AppColors.primaryColor,
                                                        child: Padding(
                                                          padding: const EdgeInsets.fromLTRB(20, 00, 05, 3),
                                                          child: Text('2023', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                                                        ),
                                                      ),
                                                      SizedBox(height: 15),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 20.0),
                                                        child: Container(
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text('B.Sc in Computer Science and Engineering', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                                              Text('Z. H. Sikder University of Science and Technology', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                              SizedBox(height: 5),
                                                              Text('Session - AUG 2019 - OCT 2023', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                              SizedBox(height: 5),
                                                              Text('CGPA - 3.17 out of 4', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(height: 40),
                                                      Container(
                                                        color: AppColors.primaryColor,
                                                        child: Padding(
                                                          padding: const EdgeInsets.fromLTRB(20, 00, 05, 3),
                                                          child: Text('2019', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                                                        ),
                                                      ),
                                                      SizedBox(height: 15),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 20.0),
                                                        child: Container(
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text('Higher Secondary Certificate (HSC/12th)', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                                              Text('Shariatpur Government College', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                              SizedBox(height: 5),
                                                              Text('Session - 2017 - 2018', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                              SizedBox(height: 5),
                                                              Text('CGPA - 2.92 out of 5', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                              SizedBox(height: 5),
                                                              Text('Group - Science', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(height: 40),
                                                      Container(
                                                        color: AppColors.primaryColor,
                                                        child: Padding(
                                                          padding: const EdgeInsets.fromLTRB(20, 00, 05, 3),
                                                          child: Text('2017', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                                                        ),
                                                      ),
                                                      SizedBox(height: 15),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 20.0),
                                                        child: Container(
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text('Secondary School Certificate (SSC/10th)', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                                              Text('Palong Tulasar Gurudas Govt. High School', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                              SizedBox(height: 5),
                                                              Text('Session - 2015', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                              SizedBox(height: 5),
                                                              Text('CGPA - 4.27 out of 5', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                              SizedBox(height: 5),
                                                              Text('Group - Science', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                            ],
                                                          ),
                                                        ),
                                                      )
                                                    ]
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 50),
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
                                                'Project',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 30),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 13),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    border: Border(
                                                        left: BorderSide(
                                                          color: Colors.deepOrangeAccent.withOpacity(0.1),
                                                        )
                                                    )
                                                ),
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        color: AppColors.primaryColor,
                                                        child: Padding(
                                                          padding: const EdgeInsets.fromLTRB(20, 00, 05, 3),
                                                          child: Text('JUN 2023 - NOV 2023', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                                                        ),
                                                      ),
                                                      SizedBox(height: 15),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 20.0),
                                                        child: Container(
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text('Sign Language Video Chating App', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                                              SizedBox(height: 5),
                                                              Text('Empowering disabled individuals with a user-friendly platform that facilitates real-time communication through sign language, fostering inclusivity and accessibility.\nPython, Dart, TensorFlow, Flutter, Firebase Cloud Firestore.',
                                                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200, fontStyle: FontStyle.italic), textAlign: TextAlign.justify,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(height: 40),
                                                      Container(
                                                        color: AppColors.primaryColor,
                                                        child: Padding(
                                                          padding: const EdgeInsets.fromLTRB(20, 00, 05, 3),
                                                          child: Text('APR 2023 - MAY 2023', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                                                        ),
                                                      ),
                                                      SizedBox(height: 15),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 20.0),
                                                        child: Container(
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text('E-Commerce App for Personal Business', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                                              SizedBox(height: 5),
                                                              Text('Streamlining sales calculations for small-scale entrepreneurs like tea or coffee sellers, empowering them to track and manage daily selling information efficiently, fostering business growth and organization.\nDart, Flutter, Firebase, Google Map API.',
                                                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200, fontStyle: FontStyle.italic), textAlign: TextAlign.justify,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ]
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 50),
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
                                                'Certifications',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 30),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 13),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    border: Border(
                                                        left: BorderSide(
                                                          color: Colors.deepOrangeAccent.withOpacity(0.1),
                                                        )
                                                    )
                                                ),
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        color: AppColors.primaryColor,
                                                        child: Padding(
                                                          padding: const EdgeInsets.fromLTRB(20, 00, 05, 3),
                                                          child: Text('OCT 2021 - FEB 2022', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                                                        ),
                                                      ),
                                                      SizedBox(height: 15),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 20.0),
                                                        child: Container(
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text('Skill Development for Mobile Application Development (Cross Platform)', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                                              SizedBox(height: 5),
                                                              Text('ICT DIVISION, Bangladesh', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(height: 40),
                                                      Container(
                                                        color: AppColors.primaryColor,
                                                        child: Padding(
                                                          padding: const EdgeInsets.fromLTRB(20, 00, 05, 3),
                                                          child: Text('SEP 2020 - JULY 2022', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                                                        ),
                                                      ),
                                                      SizedBox(height: 15),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 20.0),
                                                        child: Container(
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text('Graphics Design, Digital Marketing and Web Design', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                                              SizedBox(height: 5),
                                                              Text('CodersTrust, Bangladesh', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ]
                                                ),
                                              ),
                                            ),
                                          ]
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 40,),
                                Column(
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
                                          'Programming Languages Skills',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 30),
                                      Padding(padding: const EdgeInsets.only(left: 13),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'C++',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.95,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 15),
                                              Text(
                                                'Java',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.90,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 15),
                                              Text(
                                                'Dart',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.97,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 15),
                                              Text(
                                                'Python',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.7,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 15),
                                              Text(
                                                'PHP',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.8,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 15),
                                              Text(
                                                'JavaScript',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.65,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ]
                                        ),
                                      ),
                                      SizedBox(height: 50),
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
                                          'Frameworks Skills',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 30),
                                      Padding(padding: const EdgeInsets.only(left: 13),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Flutter',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.95,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 15),
                                              Text(
                                                'Express.js',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.60,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 15),
                                              Text(
                                                'TensorFlow',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.50,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ]
                                        ),
                                      ),
                                      SizedBox(height: 50),
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
                                          'API Integration Skills',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 30),
                                      Padding(padding: const EdgeInsets.only(left: 13),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'API Integration',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.90,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ]
                                        ),
                                      ),
                                      SizedBox(height: 50),
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
                                          'Backend Development Skills',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 30),
                                      Padding(padding: const EdgeInsets.only(left: 13),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'MySQL',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.6,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 15),
                                              Text(
                                                'Firebase',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.8,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 15),
                                              Text(
                                                'MongoDB',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.5,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ]
                                        ),
                                      ),
                                      SizedBox(height: 50),
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
                                          'Version Control Skills',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 30),
                                      Padding(padding: const EdgeInsets.only(left: 13),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Git',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.90,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ]
                                        ),
                                      ),
                                      SizedBox(height: 50),
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
                                          'Design and UI/UX Skills',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 30),
                                      Padding(padding: const EdgeInsets.only(left: 13),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'UI/UX',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.5,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 15),
                                              Text(
                                                'Web Designing (HTML, CSS)',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.75,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 15),
                                              Text(
                                                'Photoshop',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.8,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ]
                                        ),
                                      ),
                                      SizedBox(height: 50),
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
                                          'Digital Marketing Skills',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 30),
                                      Padding(padding: const EdgeInsets.only(left: 13),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Digital Marketing',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.7,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ]
                                        ),
                                      ),
                                    ]
                                ),
                              ]
                          ),
                          SizedBox(height: 40,),
                          InkWell(
                            onTap: () {},
                            splashColor: AppColors.primaryColor,
                            hoverColor: Colors.grey.withOpacity(0.2),
                            child: Container(
                              alignment: Alignment.center,
                              width: 150,
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.primaryColor,
                                ),
                              ),
                              child: Text('Download CV', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
              ),
            ]
        );
      }),
    );
  }
}



class ResumeTabletScreen extends StatefulWidget {
  const ResumeTabletScreen({super.key});

  @override
  State<ResumeTabletScreen> createState() => _ResumeTabletScreenState();
}

class _ResumeTabletScreenState extends State<ResumeTabletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return Stack(
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(padding: EdgeInsets.all(40),
                  child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: 10),
                                Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Resume',
                                          style: TextStyle(
                                            fontSize: 60,
                                            color: Colors.grey.shade600,
                                            fontWeight: FontWeight.w700,
                                            letterSpacing: 2,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 155,
                                        height: 30,
                                        color: AppColors.primaryColor,
                                        child: Center(
                                          child: Text(
                                            textWidthBasis: TextWidthBasis.longestLine,
                                            textAlign: TextAlign.center,
                                            '2 Years of Experience',
                                            style: TextStyle(
                                                fontSize: 15, fontWeight: FontWeight.w300),
                                          ),
                                        ),
                                      ),
                                    ]),
                                SizedBox(height: 40),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
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
                                                'Education',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 30),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 13),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    border: Border(
                                                        left: BorderSide(
                                                          color: Colors.deepOrangeAccent.withOpacity(0.1),
                                                        )
                                                    )
                                                ),
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        color: AppColors.primaryColor,
                                                        child: Padding(
                                                          padding: const EdgeInsets.fromLTRB(20, 00, 05, 3),
                                                          child: Text('2023', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                                                        ),
                                                      ),
                                                      SizedBox(height: 15),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 20.0),
                                                        child: Container(
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text('B.Sc in Computer Science and Engineering', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                                              Text('Z. H. Sikder University of Science and Technology', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                              SizedBox(height: 5),
                                                              Text('Session - AUG 2019 - OCT 2023', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                              SizedBox(height: 5),
                                                              Text('CGPA - 3.17 out of 4', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(height: 40),
                                                      Container(
                                                        color: AppColors.primaryColor,
                                                        child: Padding(
                                                          padding: const EdgeInsets.fromLTRB(20, 00, 05, 3),
                                                          child: Text('2019', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                                                        ),
                                                      ),
                                                      SizedBox(height: 15),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 20.0),
                                                        child: Container(
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text('Higher Secondary Certificate (HSC/12th)', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                                              Text('Shariatpur Government College', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                              SizedBox(height: 5),
                                                              Text('Session - 2017 - 2018', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                              SizedBox(height: 5),
                                                              Text('CGPA - 2.92 out of 5', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                              SizedBox(height: 5),
                                                              Text('Group - Science', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(height: 40),
                                                      Container(
                                                        color: AppColors.primaryColor,
                                                        child: Padding(
                                                          padding: const EdgeInsets.fromLTRB(20, 00, 05, 3),
                                                          child: Text('2017', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                                                        ),
                                                      ),
                                                      SizedBox(height: 15),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 20.0),
                                                        child: Container(
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text('Secondary School Certificate (SSC/10th)', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                                              Text('Palong Tulasar Gurudas Govt. High School', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                              SizedBox(height: 5),
                                                              Text('Session - 2015', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                              SizedBox(height: 5),
                                                              Text('CGPA - 4.27 out of 5', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                              SizedBox(height: 5),
                                                              Text('Group - Science', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                            ],
                                                          ),
                                                        ),
                                                      )
                                                    ]
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 50),
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
                                                'Certifications',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 30),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 13),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    border: Border(
                                                        left: BorderSide(
                                                          color: Colors.deepOrangeAccent.withOpacity(0.1),
                                                        )
                                                    )
                                                ),
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        color: AppColors.primaryColor,
                                                        child: Padding(
                                                          padding: const EdgeInsets.fromLTRB(20, 00, 05, 3),
                                                          child: Text('OCT 2021 - FEB 2022', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                                                        ),
                                                      ),
                                                      SizedBox(height: 15),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 20.0),
                                                        child: Container(
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text('Skill Development for Mobile Application Development (Cross Platform)', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                                              SizedBox(height: 5),
                                                              Text('ICT DIVISION, Bangladesh', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(height: 40),
                                                      Container(
                                                        color: AppColors.primaryColor,
                                                        child: Padding(
                                                          padding: const EdgeInsets.fromLTRB(20, 00, 05, 3),
                                                          child: Text('SEP 2020 - JULY 2022', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                                                        ),
                                                      ),
                                                      SizedBox(height: 15),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 20.0),
                                                        child: Container(
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text('Graphics Design, Digital Marketing and Web Design', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                                              SizedBox(height: 5),
                                                              Text('CodersTrust, Bangladesh', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ]
                                                ),
                                              ),
                                            ),
                                          ]
                                      ),
                                    ),
                                    SizedBox(width: 40,),
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
                                                'Experience',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 30),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 13),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    border: Border(
                                                        left: BorderSide(
                                                          color: Colors.deepOrangeAccent.withOpacity(0.1),
                                                        )
                                                    )
                                                ),
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        color: AppColors.primaryColor,
                                                        child: Padding(
                                                          padding: const EdgeInsets.fromLTRB(20, 00, 05, 3),
                                                          child: Text('AUG 2023 - PRESENT', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                                                        ),
                                                      ),
                                                      SizedBox(height: 15),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 20.0),
                                                        child: Container(
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text('Junior Flutter App Developer', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                                              Text('Creative Software l Panthapath, Dhanmondi, Dhaka', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                              SizedBox(height: 5),
                                                              Text('As a Junior Flutter Mobile App Developer at Creative Software, I collaborated closely with a skilled team to deliver high-quality mobile applications. Leveraging REST API integration, various libraries, and state management with GetX, I ensured the smooth functionality and user experience of projects like CRM, Easy Somity, and Ababil Courier. Embracing MVC and MVVM architecture principles, I contributed to creating robust and scalable solutions. This role provided me with invaluable insights into the software development lifecycle and enhanced my ability to meet project deadlines effectively.',
                                                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200, fontStyle: FontStyle.italic), textAlign: TextAlign.justify,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      )
                                                    ]
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 50),
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
                                                'Project',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 30),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 13),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    border: Border(
                                                        left: BorderSide(
                                                          color: Colors.deepOrangeAccent.withOpacity(0.1),
                                                        )
                                                    )
                                                ),
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        color: AppColors.primaryColor,
                                                        child: Padding(
                                                          padding: const EdgeInsets.fromLTRB(20, 00, 05, 3),
                                                          child: Text('JUN 2023 - NOV 2023', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                                                        ),
                                                      ),
                                                      SizedBox(height: 15),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 20.0),
                                                        child: Container(
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text('Sign Language Video Chating App', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                                              SizedBox(height: 5),
                                                              Text('Empowering disabled individuals with a user-friendly platform that facilitates real-time communication through sign language, fostering inclusivity and accessibility.\nPython, Dart, TensorFlow, Flutter, Firebase Cloud Firestore.',
                                                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200, fontStyle: FontStyle.italic), textAlign: TextAlign.justify,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(height: 40),
                                                      Container(
                                                        color: AppColors.primaryColor,
                                                        child: Padding(
                                                          padding: const EdgeInsets.fromLTRB(20, 00, 05, 3),
                                                          child: Text('APR 2023 - MAY 2023', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                                                        ),
                                                      ),
                                                      SizedBox(height: 15),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 20.0),
                                                        child: Container(
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text('E-Commerce App for Personal Business', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                                              SizedBox(height: 5),
                                                              Text('Streamlining sales calculations for small-scale entrepreneurs like tea or coffee sellers, empowering them to track and manage daily selling information efficiently, fostering business growth and organization.\nDart, Flutter, Firebase, Google Map API.',
                                                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200, fontStyle: FontStyle.italic), textAlign: TextAlign.justify,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ]
                                                ),
                                              ),
                                            ),
                                          ]
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 40,),
                                Column(
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
                                          'Programming Languages Skills',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 30),
                                      Padding(padding: const EdgeInsets.only(left: 13),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'C++',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.95,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 15),
                                              Text(
                                                'Java',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.90,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 15),
                                              Text(
                                                'Dart',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.97,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 15),
                                              Text(
                                                'Python',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.7,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 15),
                                              Text(
                                                'PHP',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.8,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 15),
                                              Text(
                                                'JavaScript',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.65,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ]
                                        ),
                                      ),
                                      SizedBox(height: 50),
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
                                          'Frameworks Skills',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 30),
                                      Padding(padding: const EdgeInsets.only(left: 13),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Flutter',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.95,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 15),
                                              Text(
                                                'Express.js',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.60,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 15),
                                              Text(
                                                'TensorFlow',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.50,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ]
                                        ),
                                      ),
                                      SizedBox(height: 50),
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
                                          'API Integration Skills',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 30),
                                      Padding(padding: const EdgeInsets.only(left: 13),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'API Integration',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.90,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ]
                                        ),
                                      ),
                                      SizedBox(height: 50),
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
                                          'Backend Development Skills',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 30),
                                      Padding(padding: const EdgeInsets.only(left: 13),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'MySQL',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.6,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 15),
                                              Text(
                                                'Firebase',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.8,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 15),
                                              Text(
                                                'MongoDB',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.5,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ]
                                        ),
                                      ),
                                      SizedBox(height: 50),
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
                                          'Version Control Skills',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 30),
                                      Padding(padding: const EdgeInsets.only(left: 13),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Git',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.90,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ]
                                        ),
                                      ),
                                      SizedBox(height: 50),
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
                                          'Design and UI/UX Skills',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 30),
                                      Padding(padding: const EdgeInsets.only(left: 13),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'UI/UX',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.5,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 15),
                                              Text(
                                                'Web Designing (HTML, CSS)',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.75,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 15),
                                              Text(
                                                'Photoshop',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.8,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ]
                                        ),
                                      ),
                                      SizedBox(height: 50),
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
                                          'Digital Marketing Skills',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 30),
                                      Padding(padding: const EdgeInsets.only(left: 13),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Digital Marketing',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor: 0.7,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.primaryColor, // Change color as needed
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ]
                                        ),
                                      ),
                                    ]
                                ),
                              ]
                          ),
                          SizedBox(height: 40,),
                          InkWell(
                            onTap: () {},
                            splashColor: AppColors.primaryColor,
                            hoverColor: Colors.grey.withOpacity(0.2),
                            child: Container(
                              alignment: Alignment.center,
                              width: 150,
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.primaryColor,
                                ),
                              ),
                              child: Text('Download CV', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
              ),
            ]
        );
      }),
    );
  }
}



class ResumeDesktopScreen extends StatefulWidget {
  const ResumeDesktopScreen({super.key});

  @override
  State<ResumeDesktopScreen> createState() => _ResumeDesktopScreenState();
}

class _ResumeDesktopScreenState extends State<ResumeDesktopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(padding: EdgeInsets.all(40),
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
                                'Resume',
                                style: TextStyle(
                                  fontSize: 60,
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 2,
                                ),
                              ),
                            ),
                            Container(
                              width: 155,
                              height: 30,
                              color: AppColors.primaryColor,
                              child: Center(
                                child: Text(
                                  textWidthBasis: TextWidthBasis.longestLine,
                                  textAlign: TextAlign.center,
                                  '2 Years of Experience',
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.w300),
                                ),
                              ),
                            ),
                          ]),
                      SizedBox(height: 40),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                                      'Education',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 13),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border(
                                              left: BorderSide(
                                                color: Colors.deepOrangeAccent.withOpacity(0.1),
                                              )
                                          )
                                      ),
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              color: AppColors.primaryColor,
                                              child: Padding(
                                                padding: const EdgeInsets.fromLTRB(20, 00, 05, 3),
                                                child: Text('2023', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                                              ),
                                            ),
                                            SizedBox(height: 15),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 20.0),
                                              child: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('B.Sc in Computer Science and Engineering', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                                    Text('Z. H. Sikder University of Science and Technology', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                    SizedBox(height: 5),
                                                    Text('Session - AUG 2019 - OCT 2023', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                    SizedBox(height: 5),
                                                    Text('CGPA - 3.17 out of 4', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 40),
                                            Container(
                                              color: AppColors.primaryColor,
                                              child: Padding(
                                                padding: const EdgeInsets.fromLTRB(20, 00, 05, 3),
                                                child: Text('2019', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                                              ),
                                            ),
                                            SizedBox(height: 15),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 20.0),
                                              child: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Higher Secondary Certificate (HSC/12th)', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                                    Text('Shariatpur Government College', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                    SizedBox(height: 5),
                                                    Text('Session - 2017 - 2018', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                    SizedBox(height: 5),
                                                    Text('CGPA - 2.92 out of 5', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                    SizedBox(height: 5),
                                                    Text('Group - Science', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 40),
                                            Container(
                                              color: AppColors.primaryColor,
                                              child: Padding(
                                                padding: const EdgeInsets.fromLTRB(20, 00, 05, 3),
                                                child: Text('2017', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                                              ),
                                            ),
                                            SizedBox(height: 15),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 20.0),
                                              child: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Secondary School Certificate (SSC/10th)', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                                    Text('Palong Tulasar Gurudas Govt. High School', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                    SizedBox(height: 5),
                                                    Text('Session - 2015', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                    SizedBox(height: 5),
                                                    Text('CGPA - 4.27 out of 5', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                    SizedBox(height: 5),
                                                    Text('Group - Science', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ]
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 50),
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
                                      'Certifications',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 13),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border(
                                              left: BorderSide(
                                                color: Colors.deepOrangeAccent.withOpacity(0.1),
                                              )
                                          )
                                      ),
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              color: AppColors.primaryColor,
                                              child: Padding(
                                                padding: const EdgeInsets.fromLTRB(20, 00, 05, 3),
                                                child: Text('OCT 2021 - FEB 2022', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                                              ),
                                            ),
                                            SizedBox(height: 15),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 20.0),
                                              child: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Skill Development for Mobile Application Development (Cross Platform)', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                                    SizedBox(height: 5),
                                                    Text('ICT DIVISION, Bangladesh', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 40),
                                            Container(
                                              color: AppColors.primaryColor,
                                              child: Padding(
                                                padding: const EdgeInsets.fromLTRB(20, 00, 05, 3),
                                                child: Text('SEP 2020 - JULY 2022', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                                              ),
                                            ),
                                            SizedBox(height: 15),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 20.0),
                                              child: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Graphics Design, Digital Marketing and Web Design', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                                    SizedBox(height: 5),
                                                    Text('CodersTrust, Bangladesh', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ]
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 200),
                                  InkWell(
                                    onTap: () {},
                                    splashColor: AppColors.primaryColor,
                                    hoverColor: Colors.grey.withOpacity(0.2),
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 150,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: AppColors.primaryColor,
                                        ),
                                      ),
                                      child: Text('Download CV', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                                    ),
                                  ),
                                ]
                            ),
                          ),
                          SizedBox(width: 40,),
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
                                      'Experience',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 13),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border(
                                              left: BorderSide(
                                                color: Colors.deepOrangeAccent.withOpacity(0.1),
                                              )
                                          )
                                      ),
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              color: AppColors.primaryColor,
                                              child: Padding(
                                                padding: const EdgeInsets.fromLTRB(20, 00, 05, 3),
                                                child: Text('AUG 2023 - PRESENT', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                                              ),
                                            ),
                                            SizedBox(height: 15),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 20.0),
                                              child: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Junior Flutter App Developer', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                                    Text('Creative Software l Panthapath, Dhanmondi, Dhaka', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                                                    SizedBox(height: 5),
                                                    Text('As a Junior Flutter Mobile App Developer at Creative Software, I collaborated closely with a skilled team to deliver high-quality mobile applications. Leveraging REST API integration, various libraries, and state management with GetX, I ensured the smooth functionality and user experience of projects like CRM, Easy Somity, and Ababil Courier. Embracing MVC and MVVM architecture principles, I contributed to creating robust and scalable solutions. This role provided me with invaluable insights into the software development lifecycle and enhanced my ability to meet project deadlines effectively.',
                                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200, fontStyle: FontStyle.italic), textAlign: TextAlign.justify,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ]
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 50),
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
                                      'Project',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 13),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border(
                                              left: BorderSide(
                                                color: Colors.deepOrangeAccent.withOpacity(0.1),
                                              )
                                          )
                                      ),
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              color: AppColors.primaryColor,
                                              child: Padding(
                                                padding: const EdgeInsets.fromLTRB(20, 00, 05, 3),
                                                child: Text('JUN 2023 - NOV 2023', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                                              ),
                                            ),
                                            SizedBox(height: 15),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 20.0),
                                              child: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Sign Language Video Chating App', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                                    SizedBox(height: 5),
                                                    Text('Empowering disabled individuals with a user-friendly platform that facilitates real-time communication through sign language, fostering inclusivity and accessibility.\nPython, Dart, TensorFlow, Flutter, Firebase Cloud Firestore.',
                                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200, fontStyle: FontStyle.italic), textAlign: TextAlign.justify,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 40),
                                            Container(
                                              color: AppColors.primaryColor,
                                              child: Padding(
                                                padding: const EdgeInsets.fromLTRB(20, 00, 05, 3),
                                                child: Text('APR 2023 - MAY 2023', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                                              ),
                                            ),
                                            SizedBox(height: 15),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 20.0),
                                              child: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('E-Commerce App for Personal Business', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                                    SizedBox(height: 5),
                                                    Text('Streamlining sales calculations for small-scale entrepreneurs like tea or coffee sellers, empowering them to track and manage daily selling information efficiently, fostering business growth and organization.\nDart, Flutter, Firebase, Google Map API.',
                                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200, fontStyle: FontStyle.italic), textAlign: TextAlign.justify,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ]
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                          ),
                          SizedBox(width: 40,),
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
                                      'Programming Languages Skills',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  Padding(padding: const EdgeInsets.only(left: 13),
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'C++',
                                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: 10,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(0.2),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: FractionallySizedBox(
                                              alignment: Alignment.centerLeft,
                                              widthFactor: 0.95,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryColor, // Change color as needed
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 15),
                                          Text(
                                            'Java',
                                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: 10,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(0.2),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: FractionallySizedBox(
                                              alignment: Alignment.centerLeft,
                                              widthFactor: 0.90,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryColor, // Change color as needed
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 15),
                                          Text(
                                            'Dart',
                                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: 10,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(0.2),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: FractionallySizedBox(
                                              alignment: Alignment.centerLeft,
                                              widthFactor: 0.97,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryColor, // Change color as needed
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 15),
                                          Text(
                                            'Python',
                                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: 10,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(0.2),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: FractionallySizedBox(
                                              alignment: Alignment.centerLeft,
                                              widthFactor: 0.7,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryColor, // Change color as needed
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 15),
                                          Text(
                                            'PHP',
                                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: 10,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(0.2),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: FractionallySizedBox(
                                              alignment: Alignment.centerLeft,
                                              widthFactor: 0.8,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryColor, // Change color as needed
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 15),
                                          Text(
                                            'JavaScript',
                                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: 10,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(0.2),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: FractionallySizedBox(
                                              alignment: Alignment.centerLeft,
                                              widthFactor: 0.65,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryColor, // Change color as needed
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]
                                    ),
                                  ),
                                  SizedBox(height: 50),
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
                                      'Frameworks Skills',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  Padding(padding: const EdgeInsets.only(left: 13),
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Flutter',
                                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: 10,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(0.2),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: FractionallySizedBox(
                                              alignment: Alignment.centerLeft,
                                              widthFactor: 0.95,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryColor, // Change color as needed
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 15),
                                          Text(
                                            'Express.js',
                                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: 10,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(0.2),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: FractionallySizedBox(
                                              alignment: Alignment.centerLeft,
                                              widthFactor: 0.60,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryColor, // Change color as needed
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 15),
                                          Text(
                                            'TensorFlow',
                                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: 10,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(0.2),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: FractionallySizedBox(
                                              alignment: Alignment.centerLeft,
                                              widthFactor: 0.50,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryColor, // Change color as needed
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]
                                    ),
                                  ),
                                  SizedBox(height: 50),
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
                                      'API Integration Skills',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  Padding(padding: const EdgeInsets.only(left: 13),
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'API Integration',
                                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: 10,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(0.2),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: FractionallySizedBox(
                                              alignment: Alignment.centerLeft,
                                              widthFactor: 0.90,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryColor, // Change color as needed
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]
                                    ),
                                  ),
                                  SizedBox(height: 50),
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
                                      'Backend Development Skills',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  Padding(padding: const EdgeInsets.only(left: 13),
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'MySQL',
                                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: 10,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(0.2),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: FractionallySizedBox(
                                              alignment: Alignment.centerLeft,
                                              widthFactor: 0.6,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryColor, // Change color as needed
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 15),
                                          Text(
                                            'Firebase',
                                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: 10,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(0.2),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: FractionallySizedBox(
                                              alignment: Alignment.centerLeft,
                                              widthFactor: 0.8,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryColor, // Change color as needed
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 15),
                                          Text(
                                            'MongoDB',
                                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: 10,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(0.2),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: FractionallySizedBox(
                                              alignment: Alignment.centerLeft,
                                              widthFactor: 0.5,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryColor, // Change color as needed
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]
                                    ),
                                  ),
                                  SizedBox(height: 50),
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
                                      'Version Control Skills',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  Padding(padding: const EdgeInsets.only(left: 13),
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Git',
                                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: 10,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(0.2),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: FractionallySizedBox(
                                              alignment: Alignment.centerLeft,
                                              widthFactor: 0.90,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryColor, // Change color as needed
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]
                                    ),
                                  ),
                                  SizedBox(height: 50),
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
                                      'Design and UI/UX Skills',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  Padding(padding: const EdgeInsets.only(left: 13),
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'UI/UX',
                                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: 10,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(0.2),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: FractionallySizedBox(
                                              alignment: Alignment.centerLeft,
                                              widthFactor: 0.5,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryColor, // Change color as needed
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 15),
                                          Text(
                                            'Web Designing (HTML, CSS)',
                                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: 10,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(0.2),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: FractionallySizedBox(
                                              alignment: Alignment.centerLeft,
                                              widthFactor: 0.75,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryColor, // Change color as needed
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 15),
                                          Text(
                                            'Photoshop',
                                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: 10,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(0.2),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: FractionallySizedBox(
                                              alignment: Alignment.centerLeft,
                                              widthFactor: 0.8,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryColor, // Change color as needed
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]
                                    ),
                                  ),
                                  SizedBox(height: 50),
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
                                      'Digital Marketing Skills',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  Padding(padding: const EdgeInsets.only(left: 13),
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Digital Marketing',
                                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: 10,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(0.2),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: FractionallySizedBox(
                                              alignment: Alignment.centerLeft,
                                              widthFactor: 0.7,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryColor, // Change color as needed
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]
                                    ),
                                  ),
                                ]
                            ),
                          ),
                        ],
                      ),
                    ]
                  ),
                  ),
              ),
            ),
          ]
        );
      }),
    );
  }
}
