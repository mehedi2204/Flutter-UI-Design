import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_web_app/view/app_color.dart';

import '../controller/theme_controller.dart';
import '../model/theme_model.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {

  final ThemeController _themeController = Get.find();

  @override
  Widget build(BuildContext context) {

    Brightness deviceTheme = MediaQuery.of(context).platformBrightness;
    ThemeType selectedTheme =
    (deviceTheme == Brightness.dark) ? ThemeType.DARK : ThemeType.LIGHT;
    _themeController.updateTheme(selectedTheme);

    final screenSize = MediaQuery.of(context).size;

    if (screenSize.width < 600) {
      return ContactMobileScreen();
    } else if (screenSize.width < 1200) {
      return ContactTabletScreen();
    } else {
      return ContactDesktopScreen();
    }
  }
}



class ContactMobileScreen extends StatefulWidget {
  const ContactMobileScreen({super.key});

  @override
  State<ContactMobileScreen> createState() => _ContactMobileScreenState();
}

class _ContactMobileScreenState extends State<ContactMobileScreen> {
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
                                    'Contact',
                                    style: TextStyle(
                                      fontSize: 60,
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 2,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 30,
                                  color: AppColors.primaryColor,
                                  child: Center(
                                    child: Text(
                                      textWidthBasis: TextWidthBasis.longestLine,
                                      textAlign: TextAlign.center,
                                      'Get in Touch',
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
                                            'Get in Touch',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 30),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 13.0),
                                          child: Container(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Thank you for taking the time to explore my portfolio! If you're interested in collaborating, have a project in mind, or just want to say hello, I'd love to hear from you. Feel free to reach out using the contact form below, and I'll get back to you as soon as possible.\n\nWhether you have questions, feedback, or ideas to discuss, I'm here to listen and ready to bring your vision to life. Let's connect and create something amazing together!\n\nLooking forward to hearing from you soon.",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                  textAlign: TextAlign.justify,
                                                ),
                                                SizedBox(height: 30),
                                                Row(
                                                    children: [
                                                      Icon(Icons.location_on, size: 25,),
                                                      SizedBox(width: 10,),
                                                      Expanded(child: Text("Tulasar, Shariatpur Sadar-8000, Shariatpur, Dhaka, Bangladesh", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500), textAlign: TextAlign.justify,)),
                                                    ]
                                                ),
                                                SizedBox(height: 15),
                                                Row(
                                                    children: [
                                                      Icon(Icons.email, size: 25,),
                                                      SizedBox(width: 10,),
                                                      Text("mehedih2204@gmail.com", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                                                    ]
                                                ),
                                                SizedBox(height: 15),
                                                Row(
                                                    children: [
                                                      Icon(Icons.call, size: 25,),
                                                      SizedBox(width: 10,),
                                                      Text("+880 1931-588892   (Whatsapp)", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                                                    ]
                                                ),
                                                SizedBox(height: 15),
                                                Row(
                                                    children: [
                                                      Icon(Icons.call, size: 25,),
                                                      SizedBox(width: 10,),
                                                      Text("+880 1518-911792", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                                                    ]
                                                ),
                                                SizedBox(height: 15),
                                                Row(
                                                    children: [
                                                      Icon(Icons.event_available, size: 25,),
                                                      SizedBox(width: 10,),
                                                      Text("Freelance Available", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                                                    ]
                                                ),
                                              ],
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
                                            'Contact Form',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 30),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 13.0),
                                          child: Container(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                Container(
                                                  height: 50,
                                                  child: TextField(
                                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                                      decoration: InputDecoration(
                                                          border: OutlineInputBorder(
                                                            borderSide: BorderSide(color: Colors.grey.withOpacity(0.9)),
                                                          ),
                                                          hintText: 'Full Name',
                                                          hintStyle: TextStyle(
                                                            fontSize: 16,
                                                            letterSpacing: 1.0,
                                                          ),
                                                          suffixIcon: Icon(Icons.person, size: 25,),
                                                          focusedBorder: OutlineInputBorder(
                                                            borderSide: BorderSide(color: AppColors.primaryColor, width: 2.0),
                                                          )
                                                      )
                                                  ),
                                                ),
                                                SizedBox(height: 15),
                                                Container(
                                                  height: 50,
                                                  child: TextField(
                                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                                      decoration: InputDecoration(
                                                          border: OutlineInputBorder(
                                                            borderSide: BorderSide(color: Colors.grey.withOpacity(0.9)),
                                                          ),
                                                          hintText: 'Email Address',
                                                          hintStyle: TextStyle(
                                                            fontSize: 16,
                                                            letterSpacing: 1.0,
                                                          ),
                                                          suffixIcon: Icon(Icons.email_rounded, size: 25,),
                                                          focusedBorder: OutlineInputBorder(
                                                            borderSide: BorderSide(color: AppColors.primaryColor, width: 2.0),
                                                          )
                                                      )
                                                  ),
                                                ),
                                                SizedBox(height: 15),
                                                TextField(
                                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                                  decoration: InputDecoration(
                                                      border: OutlineInputBorder(
                                                        borderSide: BorderSide(color: Colors.grey.withOpacity(0.9)),
                                                      ),
                                                      hintText: 'Message for Me',
                                                      hintStyle: TextStyle(
                                                        fontSize: 16,
                                                        letterSpacing: 1.0,
                                                      ),
                                                      suffixIcon: Container(
                                                          margin: EdgeInsets.only(top: 12),
                                                          child: Icon(Icons.message_rounded, size: 25,)),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(color: AppColors.primaryColor, width: 2.0),
                                                      )
                                                  ),
                                                  maxLines: 5,
                                                ),
                                                SizedBox(height: 30),
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
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                    child: Text('Send Message', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
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
                        ],
                      )
                  )
              ),
            ),
          ],
        );
      }),
    );
  }
}



class ContactTabletScreen extends StatefulWidget {
  const ContactTabletScreen({super.key});

  @override
  State<ContactTabletScreen> createState() => _ContactTabletScreenState();
}

class _ContactTabletScreenState extends State<ContactTabletScreen> {
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
                                    'Contact',
                                    style: TextStyle(
                                      fontSize: 60,
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 2,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 30,
                                  color: AppColors.primaryColor,
                                  child: Center(
                                    child: Text(
                                      textWidthBasis: TextWidthBasis.longestLine,
                                      textAlign: TextAlign.center,
                                      'Get in Touch',
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
                                            'Get in Touch',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 30),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 13.0),
                                          child: Container(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Thank you for taking the time to explore my portfolio! If you're interested in collaborating, have a project in mind, or just want to say hello, I'd love to hear from you. Feel free to reach out using the contact form below, and I'll get back to you as soon as possible.\n\nWhether you have questions, feedback, or ideas to discuss, I'm here to listen and ready to bring your vision to life. Let's connect and create something amazing together!\n\nLooking forward to hearing from you soon.",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                  textAlign: TextAlign.justify,
                                                ),
                                                SizedBox(height: 30),
                                                Row(
                                                    children: [
                                                      Icon(Icons.location_on, size: 25,),
                                                      SizedBox(width: 10,),
                                                      Expanded(child: Text("Tulasar, Shariatpur Sadar-8000, Shariatpur, Dhaka, Bangladesh", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500), textAlign: TextAlign.justify,)),
                                                    ]
                                                ),
                                                SizedBox(height: 15),
                                                Row(
                                                    children: [
                                                      Icon(Icons.email, size: 25,),
                                                      SizedBox(width: 10,),
                                                      Text("mehedih2204@gmail.com", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                                                    ]
                                                ),
                                                SizedBox(height: 15),
                                                Row(
                                                    children: [
                                                      Icon(Icons.call, size: 25,),
                                                      SizedBox(width: 10,),
                                                      Text("+880 1931-588892   (Whatsapp)", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                                                    ]
                                                ),
                                                SizedBox(height: 15),
                                                Row(
                                                    children: [
                                                      Icon(Icons.call, size: 25,),
                                                      SizedBox(width: 10,),
                                                      Text("+880 1518-911792", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                                                    ]
                                                ),
                                                SizedBox(height: 15),
                                                Row(
                                                    children: [
                                                      Icon(Icons.event_available, size: 25,),
                                                      SizedBox(width: 10,),
                                                      Text("Freelance Available", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                                                    ]
                                                ),
                                              ],
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
                                            'Contact Form',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 30),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 13.0),
                                          child: Container(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                Container(
                                                  height: 50,
                                                  child: TextField(
                                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                                      decoration: InputDecoration(
                                                          border: OutlineInputBorder(
                                                            borderSide: BorderSide(color: Colors.grey.withOpacity(0.9)),
                                                          ),
                                                          hintText: 'Full Name',
                                                          hintStyle: TextStyle(
                                                            fontSize: 16,
                                                            letterSpacing: 1.0,
                                                          ),
                                                          suffixIcon: Icon(Icons.person, size: 25,),
                                                          focusedBorder: OutlineInputBorder(
                                                            borderSide: BorderSide(color: AppColors.primaryColor, width: 2.0),
                                                          )
                                                      )
                                                  ),
                                                ),
                                                SizedBox(height: 15),
                                                Container(
                                                  height: 50,
                                                  child: TextField(
                                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                                      decoration: InputDecoration(
                                                          border: OutlineInputBorder(
                                                            borderSide: BorderSide(color: Colors.grey.withOpacity(0.9)),
                                                          ),
                                                          hintText: 'Email Address',
                                                          hintStyle: TextStyle(
                                                            fontSize: 16,
                                                            letterSpacing: 1.0,
                                                          ),
                                                          suffixIcon: Icon(Icons.email_rounded, size: 25,),
                                                          focusedBorder: OutlineInputBorder(
                                                            borderSide: BorderSide(color: AppColors.primaryColor, width: 2.0),
                                                          )
                                                      )
                                                  ),
                                                ),
                                                SizedBox(height: 15),
                                                TextField(
                                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                                  decoration: InputDecoration(
                                                      border: OutlineInputBorder(
                                                        borderSide: BorderSide(color: Colors.grey.withOpacity(0.9)),
                                                      ),
                                                      hintText: 'Message for Me',
                                                      hintStyle: TextStyle(
                                                        fontSize: 16,
                                                        letterSpacing: 1.0,
                                                      ),
                                                      suffixIcon: Container(
                                                          margin: EdgeInsets.only(top: 12),
                                                          child: Icon(Icons.message_rounded, size: 25,)),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(color: AppColors.primaryColor, width: 2.0),
                                                      )
                                                  ),
                                                  maxLines: 5,
                                                ),
                                                SizedBox(height: 30),
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
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                    child: Text('Send Message', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
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
                        ],
                      )
                  )
              ),
            ),
          ],
        );
      }),
    );
  }
}



class ContactDesktopScreen extends StatefulWidget {
  const ContactDesktopScreen({super.key});

  @override
  State<ContactDesktopScreen> createState() => _ContactDesktopScreenState();
}

class _ContactDesktopScreenState extends State<ContactDesktopScreen> {
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
                              'Contact',
                              style: TextStyle(
                                fontSize: 60,
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 2,
                              ),
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 30,
                            color: AppColors.primaryColor,
                            child: Center(
                              child: Text(
                                textWidthBasis: TextWidthBasis.longestLine,
                                textAlign: TextAlign.center,
                                'Get in Touch',
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
                                      'Get in Touch',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 13.0),
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Thank you for taking the time to explore my portfolio! If you're interested in collaborating, have a project in mind, or just want to say hello, I'd love to hear from you. Feel free to reach out using the contact form below, and I'll get back to you as soon as possible.\n\nWhether you have questions, feedback, or ideas to discuss, I'm here to listen and ready to bring your vision to life. Let's connect and create something amazing together!\n\nLooking forward to hearing from you soon.",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                          ),
                                            textAlign: TextAlign.justify,
                                          ),
                                          SizedBox(height: 30),
                                          Row(
                                            children: [
                                              Icon(Icons.location_on, size: 25,),
                                              SizedBox(width: 10,),
                                              Expanded(child: Text("Tulasar, Shariatpur Sadar-8000, Shariatpur, Dhaka, Bangladesh", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500), textAlign: TextAlign.justify,)),
                                            ]
                                          ),
                                          SizedBox(height: 15),
                                          Row(
                                              children: [
                                                Icon(Icons.email, size: 25,),
                                                SizedBox(width: 10,),
                                                Text("mehedih2204@gmail.com", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                                              ]
                                          ),
                                          SizedBox(height: 15),
                                          Row(
                                              children: [
                                                Icon(Icons.call, size: 25,),
                                                SizedBox(width: 10,),
                                                Text("+880 1931-588892   (Whatsapp)", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                                              ]
                                          ),
                                          SizedBox(height: 15),
                                          Row(
                                              children: [
                                                Icon(Icons.call, size: 25,),
                                                SizedBox(width: 10,),
                                                Text("+880 1518-911792", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                                              ]
                                          ),
                                          SizedBox(height: 15),
                                          Row(
                                              children: [
                                                Icon(Icons.event_available, size: 25,),
                                                SizedBox(width: 10,),
                                                Text("Freelance Available", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                                              ]
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
                                      'Contact Form',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 13.0),
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            height: 50,
                                            child: TextField(
                                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide(color: Colors.grey.withOpacity(0.9)),
                                                ),
                                                hintText: 'Full Name',
                                                hintStyle: TextStyle(
                                                  fontSize: 16,
                                                  letterSpacing: 1.0,
                                                ),
                                                suffixIcon: Icon(Icons.person, size: 25,),
                                                focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(color: AppColors.primaryColor, width: 2.0),
                                                )
                                              )
                                            ),
                                          ),
                                          SizedBox(height: 15),
                                          Container(
                                            height: 50,
                                            child: TextField(
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                                decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderSide: BorderSide(color: Colors.grey.withOpacity(0.9)),
                                                    ),
                                                    hintText: 'Email Address',
                                                    hintStyle: TextStyle(
                                                      fontSize: 16,
                                                      letterSpacing: 1.0,
                                                    ),
                                                    suffixIcon: Icon(Icons.email_rounded, size: 25,),
                                                    focusedBorder: OutlineInputBorder(
                                                      borderSide: BorderSide(color: AppColors.primaryColor, width: 2.0),
                                                    )
                                                )
                                            ),
                                          ),
                                          SizedBox(height: 15),
                                          TextField(
                                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.9)),
                                                  ),
                                                  hintText: 'Message for Me',
                                                  hintStyle: TextStyle(
                                                    fontSize: 16,
                                                    letterSpacing: 1.0,
                                                  ),
                                                  suffixIcon: Container(
                                                    margin: EdgeInsets.only(top: 12),
                                                      child: Icon(Icons.message_rounded, size: 25,)),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(color: AppColors.primaryColor, width: 2.0),
                                                  )
                                              ),
                                            maxLines: 5,
                                          ),
                                          SizedBox(height: 30),
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
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                              child: Text('Send Message', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
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
                    ],
                  )
                )
              ),
            ),
          ],
        );
      }),
    );
  }
}
