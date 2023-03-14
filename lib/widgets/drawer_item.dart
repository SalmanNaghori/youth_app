import 'package:flutter/material.dart';

class DrawerIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final bool isSmallScreen = screenSize.width < 600;
    final bool isLandscape = screenSize.width > screenSize.height;

    return Builder(
      builder: (context) => IconButton(
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        icon: isLandscape
            ? Image.asset('assets/images/More@2x.png')
            : Image.asset('assets/images/More.png'),
      ),
    );
  }
}
