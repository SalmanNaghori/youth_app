// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:youth_app/screens/How_it_workScreen.dart';
import 'package:youth_app/screens/contact_us_screen.dart';
import 'package:youth_app/screens/overview_screen.dart';
import 'package:youth_app/screens/urgent_help_screen.dart';

import '../screens/drawers_screen.dart';
import '../screens/urgent_help_screen.dart';

class DrawerProvider {
  final String listTitle;
  final Widget listWidget;
  DrawerProvider({
    required this.listTitle,
    required this.listWidget,
  });
}

final DrawerData = [
  DrawerProvider(
    listTitle: 'Home',
    listWidget: OverviewScreen(),
  ),
  DrawerProvider(
    listTitle: 'Urgent Help',
    listWidget: UrgentHelpScreen(),
  ),
  DrawerProvider(
    listTitle: 'How it works',
    listWidget: HowItWorkScreen(),
  ),
  DrawerProvider(
    listTitle: 'About YWI',
    listWidget: AboutYWIScreen(),
  ),
  DrawerProvider(
    listTitle: 'Contact us',
    listWidget: ContactUsScreen(),
  ),
  DrawerProvider(
    listTitle: 'FAQs',
    listWidget: FAQsScreen(),
  ),
  DrawerProvider(
    listTitle: 'Terms of use',
    listWidget: TermOfUseScreen(),
  ),
];
