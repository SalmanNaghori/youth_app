import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FloatingAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      child: FloatingActionButton(
        backgroundColor: Color(0xfff79a30),
        onPressed: () {},
        child: Icon(
          CupertinoIcons.chat_bubble_2_fill,
          size: 50,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
