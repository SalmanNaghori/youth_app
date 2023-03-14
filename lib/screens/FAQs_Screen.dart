//Faq screen

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:youth_app/providers/FAQ_provider.dart';
import 'package:youth_app/widgets/drawer.dart';
import 'package:youth_app/widgets/faq_item.dart';
import 'package:youth_app/widgets/floating_item.dart';
import '../widgets/drawer_item.dart';
import '../providers/FAQ_provider.dart';

class FAQsScreen extends StatefulWidget {
  static const routeName = '/FaqsScreen';
  @override
  _FAQsScreenState createState() => _FAQsScreenState();
}

class _FAQsScreenState extends State<FAQsScreen> {
  var _expanded = false;
  List<FAQ_list> _items = faqs_list;

  // int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingAction(),
      drawer: DrawerItem(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'FAQs',
          style: TextStyle(fontFamily: 'OpenSansSemiBold'),
        ),
        leading: DrawerIcon(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: _items
              .map((FAQ_list item) => FaqItem(
                    faq: item,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
