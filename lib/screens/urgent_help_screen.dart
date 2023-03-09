import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:youth_app/widgets/drawer.dart';
import '../widgets/urgent_help_item.dart';
import '../widgets/floating_item.dart';

class UrgentHelpScreen extends StatelessWidget {
  const UrgentHelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerItem(),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Urgent help'),
      ),
      floatingActionButton: FloatingAction(),
      body: UrgentHelpItem(),
    );
  }
}
