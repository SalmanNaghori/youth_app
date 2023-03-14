import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:youth_app/providers/pro_urgent.dart';
import 'package:youth_app/widgets/drawer.dart';
import '../widgets/urgent_help_item.dart';
import '../widgets/floating_item.dart';
import '../widgets/drawer_item.dart';

class UrgentHelpScreen extends StatelessWidget {
  const UrgentHelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerItem(),
      appBar: AppBar(
        leading: DrawerIcon(),
        centerTitle: true,
        title: Text('Urgent help'),
      ),
      floatingActionButton: FloatingAction(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
            child: Center(
              child: Text(
                'In case of urgent help, the following services will help you.',
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0x545454).withOpacity(1),
                    fontFamily: 'OpenSans'),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return UrgentHelpItem(
                    id: urgent[index].id,
                    title: urgent[index].title,
                    description: urgent[index].description,
                    email: urgent[index].email,
                    image: urgent[index].image,
                    phone: urgent[index].phone,
                    website: urgent[index].website);
              },
              itemCount: urgent.length,
            ),
          ),
        ],
      ),
    );
  }
}
