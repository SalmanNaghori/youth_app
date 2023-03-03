// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:youth_app/screens/contact_us_screen.dart';
import 'package:youth_app/screens/drawers_screen.dart';
import 'package:youth_app/screens/overview_screen.dart';

class DrawerItem extends StatefulWidget {
  late int currentIndex;

  @override
  State<DrawerItem> createState() => _DrawerItemState();
}

int currentIndex = 0;

class _DrawerItemState extends State<DrawerItem> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 75,
                  child: Image.asset('assets/images/youthLogo.png'),
                ),
                SizedBox(
                  width: 4,
                ),
                FittedBox(
                  child: Text(
                    'Connecting You',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          _createDrawerItem(
            line: currentIndex == 0,
            text: 'Home',
            isSelected: currentIndex == 0,
            onTap: () {
              setState(() {
                currentIndex = 0;
                Navigator.push(
                  context,
                  PageTransition(
                    child: OverviewScreen(),
                    type: PageTransitionType.rightToLeft,
                  ),
                );
              });
            },
          ),
          Divider(),
          _createDrawerItem(
            line: currentIndex == 1,
            text: 'Urgent help',
            isSelected: currentIndex == 1,
            onTap: () {
              setState(() {
                currentIndex = 1;
              });

              // Navigator.pushReplacementNamed(context, "/page1");
            },
          ),
          Divider(),
          _createDrawerItem(
            line: currentIndex == 2,
            text: 'How it works',
            isSelected: currentIndex == 2,
            onTap: () {
              setState(() {
                currentIndex = 2;
              });

              // Navigator.of(context).pop();
              //   Navigator.push(
              //       context,
              //       PageTransition(
              //           child: H(),
              //           type: PageTransitionType.rightToLeft));
            },
          ),
          Divider(),
          _createDrawerItem(
            line: currentIndex == 3,
            text: 'About YWI',
            isSelected: currentIndex == 3,
            onTap: () {
              setState(() {
                currentIndex = 3;
              });

              Navigator.push(
                context,
                PageTransition(
                    child: AboutYWIScreen(),
                    type: PageTransitionType.rightToLeft),
              );
            },
          ),
          Divider(),
          _createDrawerItem(
            line: currentIndex == 4,
            text: 'Contact us',
            isSelected: currentIndex == 4,
            onTap: () {
              setState(() {
                currentIndex = 4;
              });

              Navigator.push(
                context,
                PageTransition(
                    child: ContactUsScreen(),
                    type: PageTransitionType.rightToLeft),
              );
            },
          ),
          Divider(),
          _createDrawerItem(
            line: currentIndex == 5,
            text: 'FAQs',
            isSelected: currentIndex == 5,
            onTap: () {
              setState(() {
                currentIndex = 5;
              });

              Navigator.of(context).pop();
              Navigator.push(
                context,
                PageTransition(
                    child: FAQsScreen(), type: PageTransitionType.rightToLeft),
              );
            },
          ),
          Divider(),
          _createDrawerItem(
            line: currentIndex == 6,
            text: 'Terms of use',
            isSelected: currentIndex == 6,
            onTap: () {
              setState(() {
                currentIndex = 6;
              });

              Navigator.of(context).pop();
              Navigator.push(
                context,
                PageTransition(
                    child: TermOfUseScreen(),
                    type: PageTransitionType.rightToLeft),
              );
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}

// function for design the drawer
Widget _createDrawerItem(
    {required bool line,
    required String text,
    required GestureTapCallback onTap,
    required bool isSelected}) {
  return Ink(
    color: isSelected ? Color(0xffE3EAFF) : Colors.transparent,
    child: ListTile(
      selected: true,
      hoverColor: Colors.white,
      title: Row(
        children: <Widget>[
          line
              ? Container(
                  width: 10,
                  height: 10,
                  color: Colors.blue,
                )
              : Container(
                  color: Colors.blue,
                ),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
      onTap: onTap,
    ),
  );
}
