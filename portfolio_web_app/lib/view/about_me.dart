import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion/motion.dart';

import '../controller/theme_controller.dart';
import '../model/theme_model.dart';

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

    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
      bool isWideScreen = constraints.maxWidth > constraints.maxHeight;

      return Stack(children: [
        if (isWideScreen)
          Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(children: [
                SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.values.first,
                  children: [
                    Container(
                      child: Text(
                        'About Me',
                        style: TextStyle(
                            fontSize: 46,
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w100,
                            letterSpacing: 2),
                      ),
                    ),
                    Container(
                      width: 290,
                      height: 30,
                      color: Colors.deepOrangeAccent.withOpacity(0.9),
                      child: Center(
                        child: Text(
                          textWidthBasis: TextWidthBasis.longestLine,
                          textAlign: TextAlign.center,
                          'Programmer, Developer, Flutter Enthusiast',
                          style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
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
                    Motion(
                      child: Container(
                      width: 300,
                      height: 300,
                      child: Image.asset('assets/images/MD Mehedi Hasan.jpg'),
                    ),
                      shadow: ShadowConfiguration( color: Colors.black, blurRadius: 10.0, opacity: 0.5, maxOffset: Offset(0.0, 0.0),),
                    ),
                    SizedBox(width: 30),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.25,
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
                    SizedBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 2.0),
                                child: Text('Age', style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                )),
                              ),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.deepOrangeAccent.withOpacity(0.9),
                                    width: 2.0,
                                  )
                                )
                              ),
                            ),
                            SizedBox(width: 10),
                            Text('24', style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300
                            ))
                          ]
                        ),
                        SizedBox(height: 10),
                        Row(
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 2.0),
                                  child: Text('Residence', style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  )),
                                ),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                          color: Colors.deepOrangeAccent.withOpacity(0.9),
                                          width: 2.0,
                                        )
                                    )
                                ),
                              ),
                              SizedBox(width: 10),
                              Text('Bangladesh', style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300
                              ))
                            ]
                        ),
                        SizedBox(height: 10),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 2.0),
                                  child: Text('Address', style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  )),
                                ),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                          color: Colors.deepOrangeAccent.withOpacity(0.9),
                                          width: 2.0,
                                        )
                                    )
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.15,
                                child: Text('Tulasar, Shariatpur Sadar - 8000, Shariatpur, Dhaka, Bangladesh', style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300
                                ),
                                textAlign: TextAlign.justify,
                                ),
                              ),
                            ]
                        ),
                        SizedBox(height: 10),
                        Row(
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 2.0),
                                  child: Text('E-mail', style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  )),
                                ),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                          color: Colors.deepOrangeAccent.withOpacity(0.9),
                                          width: 2.0,
                                        )
                                    )
                                ),
                              ),
                              SizedBox(width: 10),
                              Text('mehedih2204@gmail.com', style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300
                              ))
                            ]
                        ),
                        SizedBox(height: 10),
                        Row(
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 2.0),
                                  child: Text('Phone', style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  )),
                                ),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                          color: Colors.deepOrangeAccent.withOpacity(0.9),
                                          width: 2.0,
                                        )
                                    )
                                ),
                              ),
                              SizedBox(width: 10),
                              Text('+880 1931 588892', style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300
                              ))
                            ]
                        ),
                        SizedBox(height: 10),
                        Row(
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 2.0),
                                  child: Text('LinkedIn', style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  )),
                                ),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                          color: Colors.deepOrangeAccent.withOpacity(0.9),
                                          width: 2.0,
                                        )
                                    )
                                ),
                              ),
                              SizedBox(width: 10),
                              Text('mehedih2204', style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300
                              ))
                            ]
                        ),
                        SizedBox(height: 10),
                        Row(
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 2.0),
                                  child: Text('Github', style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  )),
                                ),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                          color: Colors.deepOrangeAccent.withOpacity(0.9),
                                          width: 2.0,
                                        )
                                    )
                                ),
                              ),
                              SizedBox(width: 10),
                              Text('mehedih2204', style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300
                              ))
                            ]
                        ),
                        SizedBox(height: 10),
                        Row(
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 2.0),
                                  child: Text('Freelance', style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  )),
                                ),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                          color: Colors.deepOrangeAccent.withOpacity(0.9),
                                          width: 2.0,
                                        )
                                    )
                                ),
                              ),
                              SizedBox(width: 10),
                              Text('Available', style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300
                              ))
                            ]
                        ),
                      ]
                    ),
                  ],
                ),
              ]),
            ),
          ),
      ]);
    }));
  }
}



