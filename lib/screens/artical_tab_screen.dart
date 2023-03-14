import 'package:flutter/material.dart';

import '../providers/pro_articles.dart';
import '../widgets/articles_item.dart';

class ArticleTab extends StatefulWidget {
  @override
  State<ArticleTab> createState() => _ArticleTabState();
}

class _ArticleTabState extends State<ArticleTab> {
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

//load the screen
  Future<void> _loadData() async {
    setState(() {
      _isLoading = true;
    });
    // Simulate loading data
    await Future.delayed(Duration(seconds: 3));
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: _isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemBuilder: (context, index) {
                  return Article_Item(
                    id: article[index].id,
                    title: article[index].title,
                    image: article[index].image,
                  );
                },
                itemCount: article.length,
              ),
      ),
    );
  }
}
