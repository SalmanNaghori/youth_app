// this screen show only the content which are only writtren

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:youth_app/providers/FAQ_provider.dart';
import 'package:youth_app/widgets/drawer.dart';
import '../widgets/floating_item.dart';
import '../widgets/drawer_item.dart';

//this for About YWI

class AboutYWIScreen extends StatelessWidget {
  static const routeName = '/AboutYWIScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingAction(),
      drawer: DrawerItem(),
      appBar: AppBar(
        leading: DrawerIcon(),
        centerTitle: true,
        title: Text('About YWI'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.',
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              'At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}

class FAQsScreen extends StatefulWidget {
  static const routeName = '/FaqsScreen';
  @override
  _FAQsScreenState createState() => _FAQsScreenState();
}

class _FAQsScreenState extends State<FAQsScreen> {
  List<Item_FAQ> _items = [
    Item_FAQ(
      headerValue:
          'The question will be shown here. Upon clicking it, the answer will be shown.',
      expandedValue:
          'Lorem ipsum is a dummy text. This will be replaced with the actual text. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.',
    ),
    Item_FAQ(
      headerValue:
          'The next question will be shown here.Upon clicking it, the answer will be shown.',
      expandedValue:
          'Lorem ipsum is a dummy text. This will be replaced with the actual text. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.',
    ),
    // Item_FAQ(
    //   headerValue: 'Item 3',
    //   expandedValue: 'Details of item 3',
    // ),
  ];
  // int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingAction(),
      drawer: DrawerItem(),
      appBar: AppBar(
        leading: DrawerIcon(),
        centerTitle: true,
        title: Text('FAQs'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                setState(
                  () {
                    _items[index].isExpanded = !isExpanded;
                    // _selectedIndex = isExpanded ? -1 : index;
                  },
                );
              },
              children: _items.map(
                (Item_FAQ item) {
                  return ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        minVerticalPadding: 20,
                        title: Text(
                          item.headerValue,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      );
                    },
                    body: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        item.expandedValue,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    isExpanded: item.isExpanded,
                  );
                },
              ).toList(),
            ),
          ),
        ),
      ),
    );
  }
}

// Terms of use screen

class TermOfUseScreen extends StatelessWidget {
  static const routeName = '/TearmOfuseScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingAction(),
      drawer: DrawerItem(),
      appBar: AppBar(
        leading: DrawerIcon(),
        centerTitle: true,
        title: Text('Terms of use'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.',
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              'At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}
