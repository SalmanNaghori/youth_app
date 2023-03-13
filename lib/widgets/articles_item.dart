import 'package:flutter/material.dart';
import 'package:avatar_view/avatar_view.dart';

class Article_Item extends StatelessWidget {
  final String id;
  final String title;
  final String image;

  const Article_Item({
    required this.id,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: GestureDetector(
        child: Container(
          padding: EdgeInsets.all(5.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  image,
                  width: 90,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              // SizedBox(width: 16.0),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width * 0.6,
                child: Padding(
                  padding: const EdgeInsets.only(top: 28.0, left: 15),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
