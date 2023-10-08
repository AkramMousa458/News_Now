import 'package:flutter/material.dart';
import 'package:news_now/models/article_model.dart';
import 'package:news_now/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> newsList;

  const NewsListView({super.key, required this.newsList});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: newsList.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: NewsTile(article: newsList[index]),
      );
    }));
  }
}
