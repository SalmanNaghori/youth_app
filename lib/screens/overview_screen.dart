// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    hide
        Badge; //for use the badges package here i used hide badge from material
import 'package:badges/badges.dart';
import 'package:youth_app/widgets/agency_item.dart';
import 'package:youth_app/widgets/articles_item.dart';
import 'package:youth_app/widgets/drawer.dart';
import '../widgets/floating_item.dart';

class OverviewScreen extends StatelessWidget {
  static const routeName = '/OverviewScreen';
  List<String> titles = <String>[
    'Agency',
    'Articles',
  ];

  Widget _emergecy(
      String title, String subTitle) //function for call agency & articles
  {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.blue.shade100,
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                subTitle,
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 20, left: 15),
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const int tabsCount = 2;

    return DefaultTabController(
      initialIndex: 0,
      length: tabsCount,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Home',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.w700,
            ),
          ),
          actions: [
            Badge(
              position: BadgePosition.topEnd(top: 15, end: 10),
              badgeColor: Colors.orange,
              badgeContent: null,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.filter_list_alt),
              ),
            )
          ],
          scrolledUnderElevation: 5.0,
          shadowColor: Theme.of(context).shadowColor,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(55),
            child: TabBar(
              tabs: <Widget>[
                Tab(
                  text: titles[0],
                ),
                Tab(
                  text: titles[1],
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                _emergecy('Do you need any help or emergency?',
                    'Check out some agencies that can help you.'),
                Expanded(
                  child: Container(
                    child: AgencyItem(),
                  ),
                )
              ],
            ),
            Column(
              children: [
                _emergecy('Are you in an emergency?',
                    'Check out some agencies that can help you'),
                Expanded(
                    child: Container(
                  child: ArticlesItem(),
                ))
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingAction(),
        drawer: DrawerItem(),
      ),
    );
  }
}
