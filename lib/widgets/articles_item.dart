import 'package:flutter/material.dart';
import '../providers/pro_articles.dart';

class ArticlesItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: Dummy_ariticle.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(Dummy_ariticle[index].imageUrl),
            ),
            title: Text(Dummy_ariticle[index].title),
            subtitle: Text(
              Dummy_ariticle[index].subtitle,
              textAlign: TextAlign.justify,
              textDirection: TextDirection.ltr,
            ),
          ),
        );
      },
    );
  }
}
