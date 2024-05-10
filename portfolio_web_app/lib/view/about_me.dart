import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion/motion.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../controller/theme_controller.dart';
import '../model/theme_model.dart';
import 'package:url_launcher/url_launcher.dart';

import 'app_color.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  final ThemeController _themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    Brightness deviceTheme = MediaQuery.of(context).platformBrightness;
    ThemeType selectedTheme =
        (deviceTheme == Brightness.dark) ? ThemeType.DARK : ThemeType.LIGHT;
    _themeController.updateTheme(selectedTheme);

    final screenSize = MediaQuery.of(context).size;

    if (screenSize.width < 600) {
      return AboutMeMobileScreen();
    } else if (screenSize.width < 1200) {
      return AboutMeTabletScreen();
    } else {
      return AboutMeDesktopScreen();
    }
  }
}

class AboutMeMobileScreen extends StatefulWidget {
  const AboutMeMobileScreen({super.key});

  @override
  State<AboutMeMobileScreen> createState() => _AboutMeMobileScreenState();
}

class _AboutMeMobileScreenState extends State<AboutMeMobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10), //EdgeInsets.all(10),
                child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                  child: Text(
                                    'About Me',
                                    style: TextStyle(
                                      fontSize: 60, fontWeight: FontWeight.w700, letterSpacing: 2, color: Colors.grey.shade600,
                                    ),
                                  )
                              ),
                              Container(
                                width: 290,
                                height: 30,
                                color: AppColors.primaryColor,
                                child: Center(
                                  child: Text(
                                    textWidthBasis: TextWidthBasis.longestLine,
                                    textAlign: TextAlign.center,
                                    'Programmer, Developer, Flutter Enthusiast',
                                    style: TextStyle(
                                        fontSize: 15, fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ),
                            ]
                        ),
                        SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                //width: MediaQuery.of(context).size.width * 0.25,
                                child: Column(
                                  children: [
                                    Motion(
                                      child: Image.asset(
                                          'assets/images/MD Mehedi Hasan.jpg'),
                                      shadow: ShadowConfiguration(
                                        color: Colors.black,
                                        blurRadius: 10.0,
                                        opacity: 0.5,
                                        maxOffset: Offset(0.0, 0.0),
                                      ),
                                    ),
                                    SizedBox(height: 30),
                                    Text(
                                      'I am Flutter Application Developer @ Creative Software',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.justify,
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Praesent ut tortor consectetur, semper sapien non, lacinia augue. Aenean arcu libero, facilisis et nisi non, tempus faucibus tortor. Mauris vel nulla aliquam, pellentesque enim ac, faucibus tortor. Nulla odio nibh, cursus sit amet urna id, dignissim euismod augue.\n\nDuis sollicitudin, libero porttitor rutrum ultrices, turpis lorem fermentum justo, quis ornare augue tortor non est. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      textAlign: TextAlign.justify,
                                    ),
                                    SizedBox(height: 30),
                                    Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            Container(
                                              child: Padding(
                                                padding:
                                                const EdgeInsets.only(bottom: 2.0),
                                                child: Text('Age',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w600,
                                                    )),
                                              ),
                                              decoration: BoxDecoration(
                                                  border: Border(
                                                      bottom: BorderSide(
                                                        color: Colors.deepOrangeAccent
                                                            .withOpacity(0.9),
                                                        width: 2.0,
                                                      ))),
                                            ),
                                            SizedBox(width: 10),
                                            Text('24',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w300))
                                          ]),
                                          SizedBox(height: 10),
                                          Row(children: [
                                            Container(
                                              child: Padding(
                                                padding:
                                                const EdgeInsets.only(bottom: 2.0),
                                                child: Text('Residence',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w600,
                                                    )),
                                              ),
                                              decoration: BoxDecoration(
                                                  border: Border(
                                                      bottom: BorderSide(
                                                        color: Colors.deepOrangeAccent
                                                            .withOpacity(0.9),
                                                        width: 2.0,
                                                      ))),
                                            ),
                                            SizedBox(width: 10),
                                            Text('Bangladesh',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w300))
                                          ]),
                                          SizedBox(height: 10),
                                          Row(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(
                                                        bottom: 2.0),
                                                    child: Text('Address',
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w600,
                                                        )),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                          bottom: BorderSide(
                                                            color: Colors.deepOrangeAccent
                                                                .withOpacity(0.9),
                                                            width: 2.0,
                                                          ))),
                                                ),
                                                SizedBox(width: 10),
                                                Expanded(
                                                  child: Text(
                                                    'Tulasar, Shariatpur Sadar - 8000, Shariatpur, Dhaka, Bangladesh',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w300),
                                                    textAlign: TextAlign.justify,
                                                  ),
                                                ),
                                              ]),
                                          SizedBox(height: 10),
                                          Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Padding(
                                                    padding:
                                                    const EdgeInsets.only(bottom: 2.0),
                                                    child: Text('E-mail',
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w600,
                                                        )),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                          bottom: BorderSide(
                                                            color: Colors.deepOrangeAccent
                                                                .withOpacity(0.9),
                                                            width: 2.0,
                                                          ))),
                                                ),
                                                SizedBox(width: 10),
                                                Expanded(
                                                  child: Text('mehedih2204@gmail.com',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w300)),
                                                )
                                              ]),
                                          SizedBox(height: 10),
                                          Row(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(
                                                        bottom: 2.0),
                                                    child: Text('Phone',
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w600,
                                                        )),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                          bottom: BorderSide(
                                                            color: Colors.deepOrangeAccent
                                                                .withOpacity(0.9),
                                                            width: 2.0,
                                                          ))),
                                                ),
                                                SizedBox(width: 10),
                                                Text(
                                                    '+880 1931 588892\n+880 1518 911792',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w300))
                                              ]),
                                          SizedBox(height: 10),
                                          Row(children: [
                                            Container(
                                              child: Padding(
                                                padding:
                                                const EdgeInsets.only(bottom: 2.0),
                                                child: Text('LinkedIn',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w600,
                                                    )),
                                              ),
                                              decoration: BoxDecoration(
                                                  border: Border(
                                                      bottom: BorderSide(
                                                        color: Colors.deepOrangeAccent
                                                            .withOpacity(0.9),
                                                        width: 2.0,
                                                      ))),
                                            ),
                                            SizedBox(width: 10),
                                            Text('mehedih2204',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w300))
                                          ]),
                                          SizedBox(height: 10),
                                          Row(children: [
                                            Container(
                                              child: Padding(
                                                padding:
                                                const EdgeInsets.only(bottom: 2.0),
                                                child: Text('Github',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w600,
                                                    )),
                                              ),
                                              decoration: BoxDecoration(
                                                  border: Border(
                                                      bottom: BorderSide(
                                                        color: Colors.deepOrangeAccent
                                                            .withOpacity(0.9),
                                                        width: 2.0,
                                                      ))),
                                            ),
                                            SizedBox(width: 10),
                                            Text('mehedi2204',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w300))
                                          ]),
                                          SizedBox(height: 10),
                                          Row(children: [
                                            Container(
                                              child: Padding(
                                                padding:
                                                const EdgeInsets.only(bottom: 2.0),
                                                child: Text('Freelance',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w600,
                                                    )),
                                              ),
                                              decoration: BoxDecoration(
                                                  border: Border(
                                                      bottom: BorderSide(
                                                        color: Colors.deepOrangeAccent
                                                            .withOpacity(0.9),
                                                        width: 2.0,
                                                      ))),
                                            ),
                                            SizedBox(width: 10),
                                            Text('Available',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w300))
                                          ]),
                                          SizedBox(height: 30),
                                          Row(children: [
                                            InkWell(
                                              onTap: () {
                                                launchUrl(Uri.parse(
                                                    'https://www.linkedin.com/in/mehedih2204/'));
                                              },
                                              hoverColor: Colors.deepOrangeAccent
                                                  .withOpacity(0.9),
                                              child: Tooltip(
                                                message: 'LinkedIn',
                                                child: Container(
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.rectangle,
                                                      border: Border.all(
                                                        color: Colors.grey.shade700,
                                                        width: 1.0,
                                                      )),
                                                  child: Icon(
                                                    FontAwesomeIcons.linkedin,
                                                    size: 15,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            InkWell(
                                              onTap: () {
                                                launchUrl(Uri.parse(
                                                    'https://github.com/mehedi2204'));
                                              },
                                              hoverColor: Colors.deepOrangeAccent
                                                  .withOpacity(0.9),
                                              child: Tooltip(
                                                message: 'Github',
                                                child: Container(
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.rectangle,
                                                      border: Border.all(
                                                        color: Colors.grey.shade700,
                                                        width: 1.0,
                                                      )),
                                                  child: Icon(
                                                    FontAwesomeIcons.github,
                                                    size: 15,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            InkWell(
                                              onTap: () {
                                                launchUrl(Uri.parse(
                                                    'https://www.facebook.com/mehedih2204/'));
                                              },
                                              hoverColor: Colors.deepOrangeAccent
                                                  .withOpacity(0.9),
                                              child: Tooltip(
                                                message: 'Facebook',
                                                child: Container(
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.rectangle,
                                                      border: Border.all(
                                                        color: Colors.grey.shade700,
                                                        width: 1.0,
                                                      )),
                                                  child: Icon(
                                                    FontAwesomeIcons.facebook,
                                                    size: 15,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            InkWell(
                                              onTap: () {
                                                launchUrl(Uri.parse('https://youtube.com/'));
                                              },
                                              hoverColor: Colors.deepOrangeAccent
                                                  .withOpacity(0.9),
                                              child: Tooltip(
                                                message: 'Youtube',
                                                child: Container(
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.rectangle,
                                                      border: Border.all(
                                                        color: Colors.grey.shade700,
                                                        width: 1.0,
                                                      )),
                                                  child: Icon(
                                                    FontAwesomeIcons.youtube,
                                                    size: 15,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ]),
                                        ]),
                                    SizedBox(height: 40),
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
                                        'Services',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Container(
                                      child: Column(
                                        children: [
                                          Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                    child: Container(
                                                        child: Column(children: [
                                                          Image(
                                                              image: AssetImage(
                                                                  'assets/images/app-development.png'),
                                                              height: 60,
                                                              width: 60),
                                                          SizedBox(height: 10),
                                                          Text(
                                                            'Custom Flutter App Development',
                                                            style: TextStyle(
                                                              fontSize: 16,
                                                              fontWeight: FontWeight.w600,
                                                            ),
                                                            textAlign: TextAlign.center,
                                                          ),
                                                          SizedBox(height: 10),
                                                          Text(
                                                            'Tailored Flutter applications crafted to meet specific business needs, ensuring seamless performance and user experience.',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.w300,
                                                            ),
                                                            textAlign: TextAlign.justify,
                                                          )
                                                        ]))),
                                              ]),
                                          SizedBox(height: 40),
                                          Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                    child: Container(
                                                        child: Column(children: [
                                                          Image(
                                                              image: AssetImage(
                                                                  'assets/images/web-design.png'),
                                                              height: 60,
                                                              width: 60),
                                                          SizedBox(height: 10),
                                                          Text('UI/UX Design',
                                                              style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight: FontWeight.w600,
                                                              ),
                                                              textAlign: TextAlign.center),
                                                          SizedBox(height: 10),
                                                          Text(
                                                              'Expert design solutions that blend aesthetics with usability, creating visually stunning and intuitive interfaces for Flutter apps.',
                                                              style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight: FontWeight.w300,
                                                              ),
                                                              textAlign: TextAlign.justify)
                                                        ]))),
                                              ]),
                                          SizedBox(height: 40),
                                          Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                    child: Container(
                                                        child: Column(children: [
                                                          Image(
                                                              image: AssetImage(
                                                                  'assets/images/cross-platform.png'),
                                                              height: 60,
                                                              width: 60),
                                                          SizedBox(height: 10),
                                                          Text('Cross-Platform Migration',
                                                              style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight: FontWeight.w600,
                                                              ),
                                                              textAlign: TextAlign.center),
                                                          SizedBox(height: 10),
                                                          Text(
                                                              'Smooth transition of existing applications to Flutter for enhanced performance, uniformity, and compatibility across multiple platforms.',
                                                              style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight: FontWeight.w300,
                                                              ),
                                                              textAlign: TextAlign.justify)
                                                        ]))),
                                              ]),
                                          SizedBox(height: 40),
                                          Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                    child: Container(
                                                        child: Column(children: [
                                                          Image(
                                                              image: AssetImage(
                                                                  'assets/images/backend.png'),
                                                              height: 60,
                                                              width: 60),
                                                          SizedBox(height: 10),
                                                          Text('Backend Integration',
                                                              style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight: FontWeight.w600,
                                                              ),
                                                              textAlign: TextAlign.center),
                                                          SizedBox(height: 10),
                                                          Text(
                                                              'Integration of robust backend solutions with Flutter apps, ensuring secure data management, real-time updates, and scalable performance.',
                                                              style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight: FontWeight.w300,
                                                              ),
                                                              textAlign: TextAlign.justify)
                                                        ]))),
                                              ]),
                                          SizedBox(height: 40),
                                          Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                    child: Container(
                                                        child: Column(children: [
                                                          Image(
                                                              image: AssetImage(
                                                                  'assets/images/it-support.png'),
                                                              height: 60,
                                                              width: 60),
                                                          SizedBox(height: 10),
                                                          Text(
                                                            'Maintenance and Support',
                                                            style: TextStyle(
                                                              fontSize: 16,
                                                              fontWeight: FontWeight.w600,
                                                            ),
                                                            textAlign: TextAlign.center,
                                                          ),
                                                          SizedBox(height: 10),
                                                          Text(
                                                            'Ongoing maintenance services to keep Flutter apps up-to-date, secure, and optimized, along with responsive support for troubleshooting and updates.',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.w300,
                                                            ),
                                                            textAlign: TextAlign.justify,
                                                          )
                                                        ]))),
                                              ]),
                                          SizedBox(height: 40),
                                          Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                    child: Container(
                                                        child: Column(children: [
                                                          Image(
                                                              image:
                                                              AssetImage('assets/images/api.png'),
                                                              height: 60,
                                                              width: 60),
                                                          SizedBox(height: 10),
                                                          Text('API Integration',
                                                              style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight: FontWeight.w600,
                                                              ),
                                                              textAlign: TextAlign.center),
                                                          SizedBox(height: 10),
                                                          Text(
                                                              'Seamless integration of third-party APIs and services to enhance the functionality and features of Flutter applications, ensuring seamless communication and data exchange.',
                                                              style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight: FontWeight.w300,
                                                              ),
                                                              textAlign: TextAlign.justify)
                                                        ]))),
                                              ]),
                                          SizedBox(height: 40),
                                          Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                    child: Container(
                                                        child: Column(children: [
                                                          Image(
                                                              image: AssetImage(
                                                                  'assets/images/speedometer.png'),
                                                              height: 60,
                                                              width: 60),
                                                          SizedBox(height: 10),
                                                          Text('Performance Optimization',
                                                              style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight: FontWeight.w600,
                                                              ),
                                                              textAlign: TextAlign.center),
                                                          SizedBox(height: 10),
                                                          Text(
                                                              'Optimization services to enhance the performance of Flutter apps, including code refactoring, memory management, and UI/UX improvements for faster rendering and smoother user experience.',
                                                              style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight: FontWeight.w300,
                                                              ),
                                                              textAlign: TextAlign.justify)
                                                        ]))),
                                              ]),
                                          SizedBox(height: 40),
                                          Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                    child: Container(
                                                        child: Column(children: [
                                                          Image(
                                                              image: AssetImage(
                                                                  'assets/images/counselor.png'),
                                                              height: 60,
                                                              width: 60),
                                                          SizedBox(height: 10),
                                                          Text('Consultation and Training',
                                                              style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight: FontWeight.w600,
                                                              ),
                                                              textAlign: TextAlign.center),
                                                          SizedBox(height: 10),
                                                          Text(
                                                              'Expert consultation services and training programs to guide teams in adopting Flutter, optimizing development processes, and leveraging its full potential for app development projects.',
                                                              style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight: FontWeight.w300,
                                                              ),
                                                              textAlign: TextAlign.justify)
                                                        ]))),
                                              ]),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 40),
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
                                        'Clients',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: InkWell(
                                                onTap: () {},
                                                child: Tooltip(
                                                    message: 'CSE Department',
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Image(image: AssetImage('assets/images/dep-cse.png', ), height: 90, width: 90),
                                                    )
                                                )
                                            ),
                                          ),
                                          Container(
                                            child: InkWell(
                                                onTap: () {},
                                                child: Tooltip(
                                                    message: 'Green Max Courier Service',
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Image(image: AssetImage('assets/images/gmc.png', ), height: 90, width: 90),
                                                    )
                                                )
                                            ),
                                          ),
                                        ]
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: InkWell(
                                                onTap: () {},
                                                child: Tooltip(
                                                    message: 'CRM Company',
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Image(image: AssetImage('assets/images/crm.png', ), height: 90, width: 90),
                                                    )
                                                )
                                            ),
                                          ),
                                          Container(
                                            child: InkWell(
                                                onTap: () {},
                                                child: Tooltip(
                                                    message: 'ZHSUST University',
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Image(image: AssetImage('assets/images/ZHSUST_Logo.png', ), height: 90, width: 90),
                                                    )
                                                )
                                            ),
                                          ),
                                        ]
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: InkWell(
                                                onTap: () {},
                                                child: Tooltip(
                                                    message: 'Easy Somity Bank',
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Image(image: AssetImage('assets/images/easy somity.png', ), height: 90, width: 90),
                                                    )
                                                )
                                            ),
                                          ),
                                          Container(
                                            child: InkWell(
                                                onTap: () {},
                                                child: Tooltip(
                                                    message: 'Creative Software Company',
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Image(image: AssetImage('assets/images/cs logo.png', ), height: 90, width: 90),
                                                    )
                                                )
                                            ),
                                          ),
                                        ]
                                    ),
                                    SizedBox(height: 40),
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
                                        'Testimonials',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              width: 420,
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey.withOpacity(0.5),
                                                  width: 1,
                                                ),
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: Column(
                                                  children: [
                                                    Row(
                                                      crossAxisAlignment: CrossAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                          color: Colors.grey.withOpacity(0.1),
                                                          child: Image(
                                                            image: AssetImage(
                                                                'assets/images/logo-tea-coffee.png'),
                                                            height: 60,
                                                            width: 60,
                                                          ),
                                                        ),
                                                        SizedBox(width: 10),
                                                        Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text('Shamsul Alam Khan', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                                                              Text('Local Business', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200, fontStyle: FontStyle.italic),),
                                                            ]
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 10),
                                                    Text(
                                                      '"Choosing MD Mehedi Hasan for our e-commerce application development was one of the best decisions for our tea and coffee business. Their proficiency in Flutter and Firebase ensured a seamless and efficient development process. MD Mehedi Hasan understood our unique requirements and delivered a customized solution that perfectly suits our business needs. The application they developed has not only streamlined our online sales but has also enhanced our customers shopping experience. We are grateful for MD Mehedi Hasans expertise and dedication and would highly recommend them for any e-commerce project."',
                                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, fontStyle: FontStyle.italic),
                                                      textAlign: TextAlign.justify,
                                                    ),
                                                  ]
                                              ),
                                            ),
                                            SizedBox(width: 20),
                                            Container(
                                              width: 260,
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey.withOpacity(0.5),
                                                  width: 1,
                                                ),
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: Column(
                                                  children: [
                                                    Row(
                                                      crossAxisAlignment: CrossAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                          color: Colors.grey.withOpacity(0.1),
                                                          child: Image(
                                                            image: AssetImage(
                                                                'assets/images/cs logo.png'),
                                                            height: 60,
                                                            width: 60,
                                                          ),
                                                        ),
                                                        SizedBox(width: 10),
                                                        Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text('Dilouar Hossain', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                                                              Text('Creative Software', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200, fontStyle: FontStyle.italic),),
                                                            ]
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 10),
                                                    Text(
                                                      '"Over the past year plus, MD Mehedi Hasan has been an invaluable asset to our creative software company as a junior Flutter developer. Their dedication, creativity, and proficiency in Flutter development have consistently exceeded our expectations. MD Mehedi Hasan possesses strong technical skills, excellent communication, and a proactive approach to problem-solving."',
                                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, fontStyle: FontStyle.italic),
                                                      textAlign: TextAlign.justify,
                                                    ),
                                                  ]
                                              ),
                                            ),
                                            SizedBox(width: 20),
                                            Container(
                                              width: 240,
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey.withOpacity(0.5),
                                                  width: 1,
                                                ),
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: Column(
                                                  children: [
                                                    Row(
                                                      crossAxisAlignment: CrossAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                          color: Colors.grey.withOpacity(0.1),
                                                          child: Image(
                                                            image: AssetImage(
                                                                'assets/images/dep-cse.png'),
                                                            height: 60,
                                                            width: 60,
                                                          ),
                                                        ),
                                                        SizedBox(width: 10),
                                                        Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text('Fatema Akter', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                                                              Text('Lecturer, CSE, ZHSUST', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200, fontStyle: FontStyle.italic),),
                                                            ]
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 10),
                                                    Text(
                                                      '"Working with Mehedi on my mobile application project has been an absolute delight. Within just one month, Mehedi successfully developed a robust and user-friendly application using Flutter and Firebase. Their expertise, efficiency, and dedication were evident throughout the project, resulting in a high-quality product that exceeded my expectations."',
                                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, fontStyle: FontStyle.italic),
                                                      textAlign: TextAlign.justify,
                                                    ),
                                                  ]
                                              ),
                                            ),
                                          ]
                                      ),
                                    ),
                                    SizedBox(height: 40),
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
                                        'Voluntary Works',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Container(
                                      width: double.infinity,
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Card(
                                                elevation: 5,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                ),
                                                shadowColor: AppColors.primaryColor,
                                                child: Padding(
                                                  padding: EdgeInsets.all(10),
                                                  child: Column(
                                                      children: [
                                                        Text('Senior Vice President at ICT Society', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                                                        Text('ICT Olympiad 1.0 - 2023', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, fontStyle: FontStyle.italic),),
                                                        Text('DEC 2023', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200, fontStyle: FontStyle.italic),),
                                                      ]
                                                  ),
                                                ),
                                              ),
                                            )
                                          ]
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      width: double.infinity,
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Card(
                                              elevation: 5,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              shadowColor: AppColors.primaryColor,
                                              child: Padding(
                                                padding: EdgeInsets.all(10),
                                                child: Column(
                                                    children: [
                                                      Text('President at Binary Club', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                                                      Text('Department of CSE, ZHSUST', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, fontStyle: FontStyle.italic),),
                                                      Text('JAN 2023 - DEC 2023', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200, fontStyle: FontStyle.italic),),
                                                    ]
                                                ),
                                              ),
                                            ),
                                            ),
                                          ]
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      width: double.infinity,
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Card(
                                                elevation: 5,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                ),
                                                shadowColor: AppColors.primaryColor,
                                                child: Padding(
                                                  padding: EdgeInsets.all(10),
                                                  child: Column(
                                                      children: [
                                                        Text('Member at Shariatpur Math Circle', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                                                        Text('2nd Shariatpur Mathematical Olympiad, 2022', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, fontStyle: FontStyle.italic),),
                                                        Text('OCT 2022', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200, fontStyle: FontStyle.italic),),
                                                      ]
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ]
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]
                  )
                )
              )
            )
          ]
        );
      })
    );
  }
}


class AboutMeTabletScreen extends StatefulWidget {
  const AboutMeTabletScreen({super.key});

  @override
  State<AboutMeTabletScreen> createState() => _AboutMeTabletScreenState();
}

class _AboutMeTabletScreenState extends State<AboutMeTabletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.all(40),
                child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 10),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                child: Text(
                                  'About Me',
                                  style: TextStyle(
                                      fontSize: 60, fontWeight: FontWeight.w700, letterSpacing: 2, color: Colors.grey.shade600,
                                  ),
                                )
                              ),
                              Container(
                                width: 290,
                                height: 30,
                                color: AppColors.primaryColor,
                                child: Center(
                                  child: Text(
                                    textWidthBasis: TextWidthBasis.longestLine,
                                    textAlign: TextAlign.center,
                                    'Programmer, Developer, Flutter Enthusiast',
                                    style: TextStyle(
                                        fontSize: 15, fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ),
                            ]
                        ),
                        SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Motion(
                                child: Image.asset(
                                    'assets/images/MD Mehedi Hasan.jpg'),
                                shadow: ShadowConfiguration(
                                  color: Colors.black,
                                  blurRadius: 10.0,
                                  opacity: 0.5,
                                  maxOffset: Offset(0.0, 0.0),
                                ),
                              ),
                            ),
                            SizedBox(width: 50),
                            Expanded(
                              child: Container(
                                //width: MediaQuery.of(context).size.width * 0.25,
                                child: Column(
                                  children: [
                                    Text(
                                      'I am Flutter Application Developer @ Creative Software',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.justify,
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      'Praesent ut tortor consectetur, semper sapien non, lacinia augue. Aenean arcu libero, facilisis et nisi non, tempus faucibus tortor. Mauris vel nulla aliquam, pellentesque enim ac, faucibus tortor. Nulla odio nibh, cursus sit amet urna id, dignissim euismod augue.\n\nDuis sollicitudin, libero porttitor rutrum ultrices, turpis lorem fermentum justo, quis ornare augue tortor non est. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      textAlign: TextAlign.justify,
                                    ),
                                    SizedBox(height: 30),
                                    Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            Container(
                                              child: Padding(
                                                padding:
                                                const EdgeInsets.only(bottom: 2.0),
                                                child: Text('Age',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w600,
                                                    )),
                                              ),
                                              decoration: BoxDecoration(
                                                  border: Border(
                                                      bottom: BorderSide(
                                                        color: Colors.deepOrangeAccent
                                                            .withOpacity(0.9),
                                                        width: 2.0,
                                                      ))),
                                            ),
                                            SizedBox(width: 10),
                                            Text('24',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w300))
                                          ]),
                                          SizedBox(height: 10),
                                          Row(children: [
                                            Container(
                                              child: Padding(
                                                padding:
                                                const EdgeInsets.only(bottom: 2.0),
                                                child: Text('Residence',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w600,
                                                    )),
                                              ),
                                              decoration: BoxDecoration(
                                                  border: Border(
                                                      bottom: BorderSide(
                                                        color: Colors.deepOrangeAccent
                                                            .withOpacity(0.9),
                                                        width: 2.0,
                                                      ))),
                                            ),
                                            SizedBox(width: 10),
                                            Text('Bangladesh',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w300))
                                          ]),
                                          SizedBox(height: 10),
                                          Row(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(
                                                        bottom: 2.0),
                                                    child: Text('Address',
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w600,
                                                        )),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                          bottom: BorderSide(
                                                            color: Colors.deepOrangeAccent
                                                                .withOpacity(0.9),
                                                            width: 2.0,
                                                          ))),
                                                ),
                                                SizedBox(width: 10),
                                                Expanded(
                                                  child: Text(
                                                    'Tulasar, Shariatpur Sadar - 8000, Shariatpur, Dhaka, Bangladesh',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w300),
                                                    textAlign: TextAlign.justify,
                                                  ),
                                                ),
                                              ]),
                                          SizedBox(height: 10),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                            Container(
                                              child: Padding(
                                                padding:
                                                const EdgeInsets.only(bottom: 2.0),
                                                child: Text('E-mail',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w600,
                                                    )),
                                              ),
                                              decoration: BoxDecoration(
                                                  border: Border(
                                                      bottom: BorderSide(
                                                        color: Colors.deepOrangeAccent
                                                            .withOpacity(0.9),
                                                        width: 2.0,
                                                      ))),
                                            ),
                                            SizedBox(width: 10),
                                            Expanded(
                                              child: Text('mehedih2204@gmail.com',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w300)),
                                            )
                                          ]),
                                          SizedBox(height: 10),
                                          Row(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(
                                                        bottom: 2.0),
                                                    child: Text('Phone',
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w600,
                                                        )),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                          bottom: BorderSide(
                                                            color: Colors.deepOrangeAccent
                                                                .withOpacity(0.9),
                                                            width: 2.0,
                                                          ))),
                                                ),
                                                SizedBox(width: 10),
                                                Text(
                                                    '+880 1931 588892\n+880 1518 911792',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w300))
                                              ]),
                                          SizedBox(height: 10),
                                          Row(children: [
                                            Container(
                                              child: Padding(
                                                padding:
                                                const EdgeInsets.only(bottom: 2.0),
                                                child: Text('LinkedIn',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w600,
                                                    )),
                                              ),
                                              decoration: BoxDecoration(
                                                  border: Border(
                                                      bottom: BorderSide(
                                                        color: Colors.deepOrangeAccent
                                                            .withOpacity(0.9),
                                                        width: 2.0,
                                                      ))),
                                            ),
                                            SizedBox(width: 10),
                                            Text('mehedih2204',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w300))
                                          ]),
                                          SizedBox(height: 10),
                                          Row(children: [
                                            Container(
                                              child: Padding(
                                                padding:
                                                const EdgeInsets.only(bottom: 2.0),
                                                child: Text('Github',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w600,
                                                    )),
                                              ),
                                              decoration: BoxDecoration(
                                                  border: Border(
                                                      bottom: BorderSide(
                                                        color: Colors.deepOrangeAccent
                                                            .withOpacity(0.9),
                                                        width: 2.0,
                                                      ))),
                                            ),
                                            SizedBox(width: 10),
                                            Text('mehedi2204',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w300))
                                          ]),
                                          SizedBox(height: 10),
                                          Row(children: [
                                            Container(
                                              child: Padding(
                                                padding:
                                                const EdgeInsets.only(bottom: 2.0),
                                                child: Text('Freelance',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w600,
                                                    )),
                                              ),
                                              decoration: BoxDecoration(
                                                  border: Border(
                                                      bottom: BorderSide(
                                                        color: Colors.deepOrangeAccent
                                                            .withOpacity(0.9),
                                                        width: 2.0,
                                                      ))),
                                            ),
                                            SizedBox(width: 10),
                                            Text('Available',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w300))
                                          ]),
                                          SizedBox(height: 30),
                                          Row(children: [
                                            InkWell(
                                              onTap: () {
                                                launchUrl(Uri.parse(
                                                    'https://www.linkedin.com/in/mehedih2204/'));
                                              },
                                              hoverColor: Colors.deepOrangeAccent
                                                  .withOpacity(0.9),
                                              child: Tooltip(
                                                message: 'LinkedIn',
                                                child: Container(
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.rectangle,
                                                      border: Border.all(
                                                        color: Colors.grey.shade700,
                                                        width: 1.0,
                                                      )),
                                                  child: Icon(
                                                    FontAwesomeIcons.linkedin,
                                                    size: 15,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            InkWell(
                                              onTap: () {
                                                launchUrl(Uri.parse(
                                                    'https://github.com/mehedi2204'));
                                              },
                                              hoverColor: Colors.deepOrangeAccent
                                                  .withOpacity(0.9),
                                              child: Tooltip(
                                                message: 'Github',
                                                child: Container(
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.rectangle,
                                                      border: Border.all(
                                                        color: Colors.grey.shade700,
                                                        width: 1.0,
                                                      )),
                                                  child: Icon(
                                                    FontAwesomeIcons.github,
                                                    size: 15,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            InkWell(
                                              onTap: () {
                                                launchUrl(Uri.parse(
                                                    'https://www.facebook.com/mehedih2204/'));
                                              },
                                              hoverColor: Colors.deepOrangeAccent
                                                  .withOpacity(0.9),
                                              child: Tooltip(
                                                message: 'Facebook',
                                                child: Container(
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.rectangle,
                                                      border: Border.all(
                                                        color: Colors.grey.shade700,
                                                        width: 1.0,
                                                      )),
                                                  child: Icon(
                                                    FontAwesomeIcons.facebook,
                                                    size: 15,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            InkWell(
                                              onTap: () {
                                                launchUrl(Uri.parse('https://youtube.com/'));
                                              },
                                              hoverColor: Colors.deepOrangeAccent
                                                  .withOpacity(0.9),
                                              child: Tooltip(
                                                message: 'Youtube',
                                                child: Container(
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.rectangle,
                                                      border: Border.all(
                                                        color: Colors.grey.shade700,
                                                        width: 1.0,
                                                      )),
                                                  child: Icon(
                                                    FontAwesomeIcons.youtube,
                                                    size: 15,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ]),
                                        ])
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 40),
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
                            'Services',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          child: Column(
                            children: [
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: Container(
                                            child: Column(children: [
                                              Image(
                                                  image: AssetImage(
                                                      'assets/images/app-development.png'),
                                                  height: 60,
                                                  width: 60),
                                              SizedBox(height: 10),
                                              Text(
                                                'Custom Flutter App Development',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                'Tailored Flutter applications crafted to meet specific business needs, ensuring seamless performance and user experience.',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                                textAlign: TextAlign.justify,
                                              )
                                            ]))),
                                    SizedBox(width: 40),
                                    Expanded(
                                        child: Container(
                                            child: Column(children: [
                                              Image(
                                                  image: AssetImage(
                                                      'assets/images/web-design.png'),
                                                  height: 60,
                                                  width: 60),
                                              SizedBox(height: 10),
                                              Text('UI/UX Design',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                  textAlign: TextAlign.center),
                                              SizedBox(height: 10),
                                              Text(
                                                  'Expert design solutions that blend aesthetics with usability, creating visually stunning and intuitive interfaces for Flutter apps.',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                  textAlign: TextAlign.justify)
                                            ]))),
                                  ]),
                              SizedBox(height: 40),
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: Container(
                                            child: Column(children: [
                                              Image(
                                                  image: AssetImage(
                                                      'assets/images/cross-platform.png'),
                                                  height: 60,
                                                  width: 60),
                                              SizedBox(height: 10),
                                              Text('Cross-Platform Migration',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                  textAlign: TextAlign.center),
                                              SizedBox(height: 10),
                                              Text(
                                                  'Smooth transition of existing applications to Flutter for enhanced performance, uniformity, and compatibility across multiple platforms.',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                  textAlign: TextAlign.justify)
                                            ]))),
                                    SizedBox(width: 40),
                                    Expanded(
                                        child: Container(
                                            child: Column(children: [
                                              Image(
                                                  image: AssetImage(
                                                      'assets/images/backend.png'),
                                                  height: 60,
                                                  width: 60),
                                              SizedBox(height: 10),
                                              Text('Backend Integration',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                  textAlign: TextAlign.center),
                                              SizedBox(height: 10),
                                              Text(
                                                  'Integration of robust backend solutions with Flutter apps, ensuring secure data management, real-time updates, and scalable performance.',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                  textAlign: TextAlign.justify)
                                            ]))),
                                  ]),
                              SizedBox(height: 40),
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: Container(
                                            child: Column(children: [
                                              Image(
                                                  image: AssetImage(
                                                      'assets/images/it-support.png'),
                                                  height: 60,
                                                  width: 60),
                                              SizedBox(height: 10),
                                              Text(
                                                'Maintenance and Support',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                'Ongoing maintenance services to keep Flutter apps up-to-date, secure, and optimized, along with responsive support for troubleshooting and updates.',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                                textAlign: TextAlign.justify,
                                              )
                                            ]))),
                                    SizedBox(width: 40),
                                    Expanded(
                                        child: Container(
                                            child: Column(children: [
                                              Image(
                                                  image:
                                                  AssetImage('assets/images/api.png'),
                                                  height: 60,
                                                  width: 60),
                                              SizedBox(height: 10),
                                              Text('API Integration',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                  textAlign: TextAlign.center),
                                              SizedBox(height: 10),
                                              Text(
                                                  'Seamless integration of third-party APIs and services to enhance the functionality and features of Flutter applications, ensuring seamless communication and data exchange.',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                  textAlign: TextAlign.justify)
                                            ]))),
                                  ]),
                              SizedBox(height: 40),
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: Container(
                                            child: Column(children: [
                                              Image(
                                                  image: AssetImage(
                                                      'assets/images/speedometer.png'),
                                                  height: 60,
                                                  width: 60),
                                              SizedBox(height: 10),
                                              Text('Performance Optimization',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                  textAlign: TextAlign.center),
                                              SizedBox(height: 10),
                                              Text(
                                                  'Optimization services to enhance the performance of Flutter apps, including code refactoring, memory management, and UI/UX improvements for faster rendering and smoother user experience.',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                  textAlign: TextAlign.justify)
                                            ]))),
                                    SizedBox(width: 40),
                                    Expanded(
                                        child: Container(
                                            child: Column(children: [
                                              Image(
                                                  image: AssetImage(
                                                      'assets/images/counselor.png'),
                                                  height: 60,
                                                  width: 60),
                                              SizedBox(height: 10),
                                              Text('Consultation and Training',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                  textAlign: TextAlign.center),
                                              SizedBox(height: 10),
                                              Text(
                                                  'Expert consultation services and training programs to guide teams in adopting Flutter, optimizing development processes, and leveraging its full potential for app development projects.',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                  textAlign: TextAlign.justify)
                                            ]))),
                                  ]),
                            ],
                          ),
                        ),
                        SizedBox(height: 40),
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
                            'Clients',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: InkWell(
                                    onTap: () {},
                                    child: Tooltip(
                                        message: 'CSE Department',
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image(image: AssetImage('assets/images/dep-cse.png', ), height: 90, width: 90),
                                        )
                                    )
                                ),
                              ),
                              Container(
                                child: InkWell(
                                    onTap: () {},
                                    child: Tooltip(
                                        message: 'Green Max Courier Service',
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image(image: AssetImage('assets/images/gmc.png', ), height: 90, width: 90),
                                        )
                                    )
                                ),
                              ),
                              Container(
                                child: InkWell(
                                    onTap: () {},
                                    child: Tooltip(
                                        message: 'CRM Company',
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image(image: AssetImage('assets/images/crm.png', ), height: 90, width: 90),
                                        )
                                    )
                                ),
                              ),
                            ]
                        ),
                        SizedBox(height: 20),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: InkWell(
                                    onTap: () {},
                                    child: Tooltip(
                                        message: 'ZHSUST University',
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image(image: AssetImage('assets/images/ZHSUST_Logo.png', ), height: 90, width: 90),
                                        )
                                    )
                                ),
                              ),
                              Container(
                                child: InkWell(
                                    onTap: () {},
                                    child: Tooltip(
                                        message: 'Easy Somity Bank',
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image(image: AssetImage('assets/images/easy somity.png', ), height: 90, width: 90),
                                        )
                                    )
                                ),
                              ),
                              Container(
                                child: InkWell(
                                    onTap: () {},
                                    child: Tooltip(
                                        message: 'Creative Software Company',
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image(image: AssetImage('assets/images/cs logo.png', ), height: 90, width: 90),
                                        )
                                    )
                                ),
                              ),
                            ]
                        ),
                        SizedBox(height: 40),
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
                            'Testimonials',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  width: 400,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.5),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              color: Colors.grey.withOpacity(0.1),
                                              child: Image(
                                                image: AssetImage(
                                                    'assets/images/logo-tea-coffee.png'),
                                                height: 60,
                                                width: 60,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('Shamsul Alam Khan', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                                                  Text('Local Business', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200, fontStyle: FontStyle.italic),),
                                                ]
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          '"Choosing MD Mehedi Hasan for our e-commerce application development was one of the best decisions for our tea and coffee business. Their proficiency in Flutter and Firebase ensured a seamless and efficient development process. MD Mehedi Hasan understood our unique requirements and delivered a customized solution that perfectly suits our business needs. The application they developed has not only streamlined our online sales but has also enhanced our customers shopping experience. We are grateful for MD Mehedi Hasans expertise and dedication and would highly recommend them for any e-commerce project."',
                                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, fontStyle: FontStyle.italic),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ]
                                  ),
                                ),
                                SizedBox(width: 20),
                                Container(
                                  width: 260,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.5),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              color: Colors.grey.withOpacity(0.1),
                                              child: Image(
                                                image: AssetImage(
                                                    'assets/images/cs logo.png'),
                                                height: 60,
                                                width: 60,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('Dilouar Hossain', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                                                  Text('Creative Software', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200, fontStyle: FontStyle.italic),),
                                                ]
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          '"Over the past year plus, MD Mehedi Hasan has been an invaluable asset to our creative software company as a junior Flutter developer. Their dedication, creativity, and proficiency in Flutter development have consistently exceeded our expectations. MD Mehedi Hasan possesses strong technical skills, excellent communication, and a proactive approach to problem-solving."',
                                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, fontStyle: FontStyle.italic),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ]
                                  ),
                                ),
                                SizedBox(width: 20),
                                Container(
                                  width: 240,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.5),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              color: Colors.grey.withOpacity(0.1),
                                              child: Image(
                                                image: AssetImage(
                                                    'assets/images/dep-cse.png'),
                                                height: 60,
                                                width: 60,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('Fatema Akter', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                                                  Text('Lecturer, CSE, ZHSUST', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200, fontStyle: FontStyle.italic),),
                                                ]
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          '"Working with Mehedi on my mobile application project has been an absolute delight. Within just one month, Mehedi successfully developed a robust and user-friendly application using Flutter and Firebase. Their expertise, efficiency, and dedication were evident throughout the project, resulting in a high-quality product that exceeded my expectations."',
                                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, fontStyle: FontStyle.italic),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ]
                                  ),
                                ),
                              ]
                          ),
                        ),
                        SizedBox(height: 40),
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
                            'Voluntary Works',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: double.infinity,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(child: Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  shadowColor: AppColors.primaryColor,
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                        children: [
                                          Text('Senior Vice President at ICT Society', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                                          Text('ICT Olympiad 1.0 - 2023', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, fontStyle: FontStyle.italic),),
                                          Text('DEC 2023', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200, fontStyle: FontStyle.italic),),
                                        ]
                                    ),
                                  ),
                                ),),
                                SizedBox(width: 10,),
                                Expanded(child: Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  shadowColor: AppColors.primaryColor,
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                        children: [
                                          Text('President at Binary Club', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                                          Text('Department of CSE, ZHSUST', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, fontStyle: FontStyle.italic),),
                                          Text('JAN 2023 - DEC 2023', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200, fontStyle: FontStyle.italic),),
                                        ]
                                    ),
                                  ),
                                ),),
                              ]
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Card(
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    shadowColor: AppColors.primaryColor,
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                          children: [
                                            Text('Member at Shariatpur Math Circle', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                                            Text('2nd Shariatpur Mathematical Olympiad, 2022', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, fontStyle: FontStyle.italic),),
                                            Text('OCT 2022', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200, fontStyle: FontStyle.italic),),
                                          ]
                                      ),
                                    ),
                                  ),
                                ),
                              ]
                          ),
                        ),
                      ]
                  )
                )
              )
            )
          ],
        );
      }
      ),
    );
  }
}


class AboutMeDesktopScreen extends StatefulWidget {
  const AboutMeDesktopScreen({super.key});

  @override
  State<AboutMeDesktopScreen> createState() => _AboutMeDesktopScreenState();
}

class _AboutMeDesktopScreenState extends State<AboutMeDesktopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {

      return Stack(children: [
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.all(40),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            child: Text(
                              'About Me',
                              style: TextStyle(
                                  fontSize: 60,
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 2),
                            ),
                          ),
                          Container(
                            width: 290,
                            height: 30,
                            color: AppColors.primaryColor,
                            child: Center(
                              child: Text(
                                textWidthBasis: TextWidthBasis.longestLine,
                                textAlign: TextAlign.center,
                                'Programmer, Developer, Flutter Enthusiast',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                        ]),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Motion(
                            child: Image.asset(
                                'assets/images/MD Mehedi Hasan.jpg'),
                            shadow: ShadowConfiguration(
                              color: Colors.black,
                              blurRadius: 10.0,
                              opacity: 0.5,
                              maxOffset: Offset(0.0, 0.0),
                            ),
                          ),
                        ),
                        SizedBox(width: 50),
                        Expanded(
                          child: Container(
                            //width: MediaQuery.of(context).size.width * 0.25,
                            child: Column(
                              children: [
                                Text(
                                  'I am Flutter Application Developer @ Creative Software',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'Praesent ut tortor consectetur, semper sapien non, lacinia augue. Aenean arcu libero, facilisis et nisi non, tempus faucibus tortor. Mauris vel nulla aliquam, pellentesque enim ac, faucibus tortor. Nulla odio nibh, cursus sit amet urna id, dignissim euismod augue.\n\nDuis sollicitudin, libero porttitor rutrum ultrices, turpis lorem fermentum justo, quis ornare augue tortor non est. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 50),
                        Expanded(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Container(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 2.0),
                                      child: Text('Age',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          )),
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                      color: Colors.deepOrangeAccent
                                          .withOpacity(0.9),
                                      width: 2.0,
                                    ))),
                                  ),
                                  SizedBox(width: 10),
                                  Text('24',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300))
                                ]),
                                SizedBox(height: 10),
                                Row(children: [
                                  Container(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 2.0),
                                      child: Text('Residence',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          )),
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                      color: Colors.deepOrangeAccent
                                          .withOpacity(0.9),
                                      width: 2.0,
                                    ))),
                                  ),
                                  SizedBox(width: 10),
                                  Text('Bangladesh',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300))
                                ]),
                                SizedBox(height: 10),
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 2.0),
                                          child: Text('Address',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              )),
                                        ),
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                          color: Colors.deepOrangeAccent
                                              .withOpacity(0.9),
                                          width: 2.0,
                                        ))),
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                          child: Text(
                                            'Tulasar, Shariatpur Sadar - 8000, Shariatpur, Dhaka, Bangladesh',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300),
                                            textAlign: TextAlign.justify,
                                          ),
                                      ),
                                    ]),
                                SizedBox(height: 10),
                                Row(children: [
                                  Container(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 2.0),
                                      child: Text('E-mail',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          )),
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                      color: Colors.deepOrangeAccent
                                          .withOpacity(0.9),
                                      width: 2.0,
                                    ))),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                      child: Text('mehedih2204@gmail.com',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300)
                                      ),
                                  ),
                                ]),
                                SizedBox(height: 10),
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 2.0),
                                          child: Text('Phone',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              )),
                                        ),
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                          color: Colors.deepOrangeAccent
                                              .withOpacity(0.9),
                                          width: 2.0,
                                        ))),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                          '+880 1931 588892\n+880 1518 911792',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300))
                                    ]),
                                SizedBox(height: 10),
                                Row(children: [
                                  Container(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 2.0),
                                      child: Text('LinkedIn',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          )),
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                      color: Colors.deepOrangeAccent
                                          .withOpacity(0.9),
                                      width: 2.0,
                                    ))),
                                  ),
                                  SizedBox(width: 10),
                                  Text('mehedih2204',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300))
                                ]),
                                SizedBox(height: 10),
                                Row(children: [
                                  Container(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 2.0),
                                      child: Text('Github',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          )),
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                      color: Colors.deepOrangeAccent
                                          .withOpacity(0.9),
                                      width: 2.0,
                                    ))),
                                  ),
                                  SizedBox(width: 10),
                                  Text('mehedi2204',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300))
                                ]),
                                SizedBox(height: 10),
                                Row(children: [
                                  Container(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 2.0),
                                      child: Text('Freelance',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          )),
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                      color: Colors.deepOrangeAccent
                                          .withOpacity(0.9),
                                      width: 2.0,
                                    ))),
                                  ),
                                  SizedBox(width: 10),
                                  Text('Available',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300))
                                ]),
                                SizedBox(height: 30),
                                Row(children: [
                                  InkWell(
                                    onTap: () {
                                      launchUrl(Uri.parse(
                                          'https://www.linkedin.com/in/mehedih2204/'));
                                    },
                                    hoverColor: Colors.deepOrangeAccent
                                        .withOpacity(0.9),
                                    child: Tooltip(
                                      message: 'LinkedIn',
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            border: Border.all(
                                              color: Colors.grey.shade700,
                                              width: 1.0,
                                            )),
                                        child: Icon(
                                          FontAwesomeIcons.linkedin,
                                          size: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  InkWell(
                                    onTap: () {
                                      launchUrl(Uri.parse(
                                          'https://github.com/mehedi2204'));
                                    },
                                    hoverColor: Colors.deepOrangeAccent
                                        .withOpacity(0.9),
                                    child: Tooltip(
                                      message: 'Github',
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            border: Border.all(
                                              color: Colors.grey.shade700,
                                              width: 1.0,
                                            )),
                                        child: Icon(
                                          FontAwesomeIcons.github,
                                          size: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  InkWell(
                                    onTap: () {
                                      launchUrl(Uri.parse(
                                          'https://www.facebook.com/mehedih2204/'));
                                    },
                                    hoverColor: Colors.deepOrangeAccent
                                        .withOpacity(0.9),
                                    child: Tooltip(
                                      message: 'Facebook',
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            border: Border.all(
                                              color: Colors.grey.shade700,
                                              width: 1.0,
                                            )),
                                        child: Icon(
                                          FontAwesomeIcons.facebook,
                                          size: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  InkWell(
                                    onTap: () {
                                      launchUrl(Uri.parse('https://youtube.com/'));
                                    },
                                    hoverColor: Colors.deepOrangeAccent
                                        .withOpacity(0.9),
                                    child: Tooltip(
                                      message: 'Youtube',
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            border: Border.all(
                                              color: Colors.grey.shade700,
                                              width: 1.0,
                                            )),
                                        child: Icon(
                                          FontAwesomeIcons.youtube,
                                          size: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                              ]),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
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
                        'Services',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Column(
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Container(
                                        child: Column(children: [
                                  Image(
                                      image: AssetImage(
                                          'assets/images/app-development.png'),
                                      height: 60,
                                      width: 60),
                                  SizedBox(height: 10),
                                  Text(
                                    'Custom Flutter App Development',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Tailored Flutter applications crafted to meet specific business needs, ensuring seamless performance and user experience.',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                    ),
                                    textAlign: TextAlign.justify,
                                  )
                                ]))),
                                SizedBox(width: 40),
                                Expanded(
                                    child: Container(
                                        child: Column(children: [
                                  Image(
                                      image: AssetImage(
                                          'assets/images/web-design.png'),
                                      height: 60,
                                      width: 60),
                                  SizedBox(height: 10),
                                  Text('UI/UX Design',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.center),
                                  SizedBox(height: 10),
                                  Text(
                                      'Expert design solutions that blend aesthetics with usability, creating visually stunning and intuitive interfaces for Flutter apps.',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                      ),
                                      textAlign: TextAlign.justify)
                                ]))),
                                SizedBox(width: 40),
                                Expanded(
                                    child: Container(
                                        child: Column(children: [
                                  Image(
                                      image: AssetImage(
                                          'assets/images/cross-platform.png'),
                                      height: 60,
                                      width: 60),
                                  SizedBox(height: 10),
                                  Text('Cross-Platform Migration',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.center),
                                  SizedBox(height: 10),
                                  Text(
                                      'Smooth transition of existing applications to Flutter for enhanced performance, uniformity, and compatibility across multiple platforms.',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                      ),
                                      textAlign: TextAlign.justify)
                                ]))),
                                SizedBox(width: 40),
                                Expanded(
                                    child: Container(
                                        child: Column(children: [
                                  Image(
                                      image: AssetImage(
                                          'assets/images/backend.png'),
                                      height: 60,
                                      width: 60),
                                  SizedBox(height: 10),
                                  Text('Backend Integration',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.center),
                                  SizedBox(height: 10),
                                  Text(
                                      'Integration of robust backend solutions with Flutter apps, ensuring secure data management, real-time updates, and scalable performance.',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                      ),
                                      textAlign: TextAlign.justify)
                                ]))),
                              ]),
                          SizedBox(height: 40),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Container(
                                        child: Column(children: [
                                  Image(
                                      image: AssetImage(
                                          'assets/images/it-support.png'),
                                      height: 60,
                                      width: 60),
                                  SizedBox(height: 10),
                                  Text(
                                    'Maintenance and Support',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Ongoing maintenance services to keep Flutter apps up-to-date, secure, and optimized, along with responsive support for troubleshooting and updates.',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                    ),
                                    textAlign: TextAlign.justify,
                                  )
                                ]))),
                                SizedBox(width: 40),
                                Expanded(
                                    child: Container(
                                        child: Column(children: [
                                  Image(
                                      image:
                                          AssetImage('assets/images/api.png'),
                                      height: 60,
                                      width: 60),
                                  SizedBox(height: 10),
                                  Text('API Integration',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.center),
                                  SizedBox(height: 10),
                                  Text(
                                      'Seamless integration of third-party APIs and services to enhance the functionality and features of Flutter applications, ensuring seamless communication and data exchange.',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                      ),
                                      textAlign: TextAlign.justify)
                                ]))),
                                SizedBox(width: 40),
                                Expanded(
                                    child: Container(
                                        child: Column(children: [
                                  Image(
                                      image: AssetImage(
                                          'assets/images/speedometer.png'),
                                      height: 60,
                                      width: 60),
                                  SizedBox(height: 10),
                                  Text('Performance Optimization',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.center),
                                  SizedBox(height: 10),
                                  Text(
                                      'Optimization services to enhance the performance of Flutter apps, including code refactoring, memory management, and UI/UX improvements for faster rendering and smoother user experience.',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                      ),
                                      textAlign: TextAlign.justify)
                                ]))),
                                SizedBox(width: 40),
                                Expanded(
                                    child: Container(
                                        child: Column(children: [
                                  Image(
                                      image: AssetImage(
                                          'assets/images/counselor.png'),
                                      height: 60,
                                      width: 60),
                                  SizedBox(height: 10),
                                  Text('Consultation and Training',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.center),
                                  SizedBox(height: 10),
                                  Text(
                                      'Expert consultation services and training programs to guide teams in adopting Flutter, optimizing development processes, and leveraging its full potential for app development projects.',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                      ),
                                      textAlign: TextAlign.justify)
                                ]))),
                              ]),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
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
                        'Clients',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: InkWell(
                            onTap: () {},
                              child: Tooltip(
                                  message: 'CSE Department',
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(image: AssetImage('assets/images/dep-cse.png', ), height: 90, width: 90),
                                  )
                              )
                          ),
                        ),
                        Container(
                          child: InkWell(
                              onTap: () {},
                              child: Tooltip(
                                  message: 'Green Max Courier Service',
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(image: AssetImage('assets/images/gmc.png', ), height: 90, width: 90),
                                  )
                              )
                          ),
                        ),
                        Container(
                          child: InkWell(
                              onTap: () {},
                              child: Tooltip(
                                  message: 'CRM Company',
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(image: AssetImage('assets/images/crm.png', ), height: 90, width: 90),
                                  )
                              )
                          ),
                        ),
                        Container(
                          child: InkWell(
                              onTap: () {},
                              child: Tooltip(
                                  message: 'ZHSUST University',
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(image: AssetImage('assets/images/ZHSUST_Logo.png', ), height: 90, width: 90),
                                  )
                              )
                          ),
                        ),
                        Container(
                          child: InkWell(
                              onTap: () {},
                              child: Tooltip(
                                  message: 'Easy Somity Bank',
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(image: AssetImage('assets/images/easy somity.png', ), height: 90, width: 90),
                                  )
                              )
                          ),
                        ),
                        Container(
                          child: InkWell(
                              onTap: () {},
                              child: Tooltip(
                                  message: 'Creative Software Company',
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(image: AssetImage('assets/images/cs logo.png', ), height: 90, width: 90),
                                  )
                              )
                          ),
                        ),
                      ]
                    ),
                    SizedBox(height: 40),
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
                        'Testimonials',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            width: 600,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey.withOpacity(0.5),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        color: Colors.grey.withOpacity(0.1),
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/logo-tea-coffee.png'),
                                          height: 60,
                                          width: 60,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Shamsul Alam Khan', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                                            Text('Local Business', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200, fontStyle: FontStyle.italic),),
                                          ]
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    '"Choosing MD Mehedi Hasan for our e-commerce application development was one of the best decisions for our tea and coffee business. Their proficiency in Flutter and Firebase ensured a seamless and efficient development process. MD Mehedi Hasan understood our unique requirements and delivered a customized solution that perfectly suits our business needs. The application they developed has not only streamlined our online sales but has also enhanced our customers shopping experience. We are grateful for MD Mehedi Hasans expertise and dedication and would highly recommend them for any e-commerce project."',
                                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, fontStyle: FontStyle.italic),
                                    textAlign: TextAlign.justify,
                                  ),
                                ]
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            width: 400,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey.withOpacity(0.5),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        color: Colors.grey.withOpacity(0.1),
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/cs logo.png'),
                                          height: 60,
                                          width: 60,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Dilouar Hossain', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                                            Text('Creative Software', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200, fontStyle: FontStyle.italic),),
                                          ]
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    '"Over the past year plus, MD Mehedi Hasan has been an invaluable asset to our creative software company as a junior Flutter developer. Their dedication, creativity, and proficiency in Flutter development have consistently exceeded our expectations. MD Mehedi Hasan possesses strong technical skills, excellent communication, and a proactive approach to problem-solving."',
                                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, fontStyle: FontStyle.italic),
                                    textAlign: TextAlign.justify,
                                  ),
                                ]
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            width: 350,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey.withOpacity(0.5),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        color: Colors.grey.withOpacity(0.1),
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/dep-cse.png'),
                                          height: 60,
                                          width: 60,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Fatema Akter', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                                            Text('Lecturer, CSE, ZHSUST', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200, fontStyle: FontStyle.italic),),
                                          ]
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    '"Working with Mehedi on my mobile application project has been an absolute delight. Within just one month, Mehedi successfully developed a robust and user-friendly application using Flutter and Firebase. Their expertise, efficiency, and dedication were evident throughout the project, resulting in a high-quality product that exceeded my expectations."',
                                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, fontStyle: FontStyle.italic),
                                    textAlign: TextAlign.justify,
                                  ),
                                ]
                            ),
                          ),
                        ]
                      ),
                    ),
                    SizedBox(height: 40),
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
                        'Voluntary Works',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadowColor: AppColors.primaryColor,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                  children: [
                                    Text('Senior Vice President at ICT Society', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                                    Text('ICT Olympiad 1.0 - 2023', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, fontStyle: FontStyle.italic),),
                                    Text('DEC 2023', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200, fontStyle: FontStyle.italic),),
                                  ]
                              ),
                            ),
                          ),),
                          SizedBox(width: 10,),
                          Expanded(child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadowColor: AppColors.primaryColor,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                  children: [
                                    Text('President at Binary Club', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                                    Text('Department of CSE, ZHSUST', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, fontStyle: FontStyle.italic),),
                                    Text('JAN 2023 - DEC 2023', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200, fontStyle: FontStyle.italic),),
                                  ]
                              ),
                            ),
                          ),),
                          SizedBox(width: 10,),
                          Expanded(child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadowColor: AppColors.primaryColor,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                  children: [
                                    Text('Member at Shariatpur Math Circle', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                                    Text('2nd Shariatpur Mathematical Olympiad, 2022', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, fontStyle: FontStyle.italic),),
                                    Text('OCT 2022', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200, fontStyle: FontStyle.italic),),
                                  ]
                              ),
                            ),
                          ),),
                        ]
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ]);
    }));
  }
}
