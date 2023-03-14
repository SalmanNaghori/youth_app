// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'package:flutter/material.dart'
    hide
        Badge; //for use the badges package here i used hide badge from material
import 'package:badges/badges.dart';
import 'package:youth_app/screens/agancy_tab_screen.dart';
import 'package:youth_app/screens/artical_tab_screen.dart';
import 'package:youth_app/widgets/articles_item.dart';
import 'package:youth_app/widgets/drawer.dart';
import '../widgets/floating_item.dart';
import '../widgets/drawer_item.dart';

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
      decoration: BoxDecoration(color: Color(0xff3f7ccd).withOpacity(0.1)),
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
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
    bool _isLoading = false;

    const int tabsCount = 2;
    final Size screenSize = MediaQuery.of(context).size;
    final bool isSmallScreen = screenSize.width < 600;
    final bool isLandscape = screenSize.width > screenSize.height;

    return DefaultTabController(
      initialIndex: 0,
      length: tabsCount,
      child: Scaffold(
        appBar: AppBar(
          leading: DrawerIcon(),
          centerTitle: true,
          title: Text(
            'Home',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: [
            Badge(
              position: BadgePosition.topEnd(
                  top: isLandscape ? 10 : 15, end: isLandscape ? 5 : 10),
              badgeColor: Colors.orange,
              badgeContent: null,
              child: IconButton(
                onPressed: () {},
                icon: isLandscape
                    ? Image.asset('assets/images/filter@2x.png')
                    : Image.asset('assets/images/filter.png'),
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
                    child: AgencyTab(),
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
                  child: _isLoading
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : ArticleTab(),
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
