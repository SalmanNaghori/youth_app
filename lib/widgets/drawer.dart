// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:youth_app/screens/How_it_workScreen.dart';
import 'package:youth_app/screens/contact_us_screen.dart';
import 'package:youth_app/screens/drawers_screen.dart';
import 'package:youth_app/screens/overview_screen.dart';
import 'package:youth_app/screens/urgent_help_screen.dart';

class DrawerItem extends StatefulWidget {
  late int currentIndex;
  static final List<String> _listViewData = [
    'Home',
    'Urgent help',
    'How it works',
    'About YWI',
    'Contact us',
    'FAQs',
    'Terms of use',
  ];
  static final List<Widget> _listViewWidget = [
    OverviewScreen(),
    UrgentHelpScreen(),
    HowItWorkScreen(),
    AboutYWIScreen(),
    ContactUsScreen(),
    FAQsScreen(),
    TermOfUseScreen(),
  ];

  @override
  State<DrawerItem> createState() => _DrawerItemState();
}

int currentIndex = 0;

class _DrawerItemState extends State<DrawerItem> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 250, 247, 247),
      child: Container(
        padding: EdgeInsets.only(top: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 75,
                  child: Image.asset('assets/images/youthLogo.png'),
                ),
                SizedBox(
                  width: 7,
                ),
                FittedBox(
                  child: Text(
                    'Connecting You',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontFamily: "OpenSans",
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: DrawerItem._listViewData.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        width: 4,
                        height: 76,
                        color: currentIndex == index
                            ? Color(0xff3f7ccd)
                            : Color.fromARGB(255, 250, 247, 247),
                      ),
                      Expanded(
                        child: Container(
                          color: currentIndex == index
                              ? Color(0xffcfe0f5)
                              : Color.fromARGB(255, 250, 247, 247),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: ListTile(
                              title: Text(
                                DrawerItem._listViewData[index],
                                style: TextStyle(
                                    fontFamily: 'OpenSans', fontSize: 18),
                              ),
                              onTap: () {
                                setState(
                                  () {
                                    currentIndex = index;
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            child: DrawerItem
                                                ._listViewWidget[index],
                                            type: PageTransitionType
                                                .rightToLeft));
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
              


//  line
//               ? Container(
//                   height: 55,
//                   width: 10,
//                   decoration: BoxDecoration(
//                     color: Colors.blue,
//                   ),
//                 )
//               : Container(
//                   color: Colors.blue,
//                 ),