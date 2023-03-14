import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FloatingAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final bool isSmallScreen = screenSize.width < 600;
    final bool isLandscape = screenSize.width > screenSize.height;
    return Container(
      width: isLandscape
          ? MediaQuery.of(context).size.width * 0.1
          : MediaQuery.of(context).size.width * 0.2,
      height: isLandscape
          ? MediaQuery.of(context).size.height * 0.2
          : MediaQuery.of(context).size.height * 0.09,
      child: FloatingActionButton(
        backgroundColor: Color(0xfff79a30),
        onPressed: () {},
        child: isLandscape
            ? Image.asset('assets/images/Group@2x.png')
            : Image.asset('assets/images/Group.png'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
