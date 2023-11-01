import 'package:dcard_demo/widgets/article/article_card.dart';
import 'package:flutter/material.dart';

class ArticleList extends StatefulWidget {
  final List<String> _articles = ["post1", "post2", "post3", "post4"];

  ArticleList({super.key});

  @override
  State<ArticleList> createState() => _ArticleListState();
}

class _ArticleListState extends State<ArticleList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget._articles.length,
              itemBuilder: (context, index) {
                return ArticleCard(
                  child: widget._articles[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
