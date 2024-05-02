import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final Function(int) onItemSelected;
  final int selectedIndex;

  const AppDrawer({
    Key? key,
    required this.onItemSelected,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
            ),
            child: Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/MD Mehedi Hasan.jpg'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'MD Mehedi Hasan',
                    style: TextStyle(
                      color: Colors.deepOrangeAccent.withOpacity(0.9),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Flutter Application Developer',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: selectedIndex == 0
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
            child: ListTile(
              leading: Icon(Icons.home_outlined),
              title: Text('Home',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                )
              ),
              onTap: () {
                onItemSelected(0);
                Navigator.pop(context);
              },
              selected: selectedIndex == 0,
              selectedColor: Colors.white,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: selectedIndex == 1
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
            child: ListTile(
              leading: Icon(Icons.person_outline),
              title: Text('About Me',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  )
              ),
              onTap: () {
                onItemSelected(1);
                Navigator.pop(context);
              },
              selected: selectedIndex == 1,
              selectedColor: Colors.white,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: selectedIndex == 2
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
            child: ListTile(
              leading: Icon(Icons.description_outlined),
              title: Text('Resume',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  )
              ),
              onTap: () {
                onItemSelected(2);
                Navigator.pop(context);
              },
              selected: selectedIndex == 2,
              selectedColor: Colors.white,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: selectedIndex == 3
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
            child: ListTile(
              leading: Icon(Icons.work_outline),
              title: Text('Portfolio',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  )
              ),
              onTap: () {
                onItemSelected(3);
                Navigator.pop(context);
              },
              selected: selectedIndex == 3,
              selectedColor: Colors.white,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: selectedIndex == 4
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
            child: ListTile(
              leading: Icon(Icons.email_outlined),
              title: Text('Contact',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  )
              ),
              onTap: () {
                onItemSelected(4);
                Navigator.pop(context);
              },
              selected: selectedIndex == 4,
              selectedColor: Colors.white,
            ),
          ),
          Container(
              decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                      color: Colors.deepOrangeAccent
                          .withOpacity(0.2),
                      width: 1.0,
                    )),
              )),
          // Add more ListTile widgets for other sections
        ],
      ),
    );
  }
}