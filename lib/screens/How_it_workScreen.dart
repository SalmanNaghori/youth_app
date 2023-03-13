import 'package:flutter/material.dart';
import '../widgets/drawer_item.dart';
import '../widgets/drawer.dart';

class HowItWorkScreen extends StatelessWidget {
  const HowItWorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: DrawerIcon(),
        title: Text('How it works'),
      ),
      drawer: DrawerItem(),
    );
  }
}
