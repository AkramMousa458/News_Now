import 'package:flutter/material.dart';
import 'package:news_now/models/article_model.dart';
import 'package:news_now/services/news_service.dart';
import 'package:news_now/widgets/news_tile.dart';
import 'package:news_now/widgets/shimmer_tile.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({
    super.key, required this.country,
  });

  final String country;

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> newsList = [];

  bool isLoading = true;

  @override
  void initState() {
    getNews();
    super.initState();
  }

  Future<void> getNews() async {
    newsList = await NewsService().getNews(category: 'general', country: widget.country);
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SliverList(
            delegate:
                SliverChildBuilderDelegate(childCount: 10, (context, index) {
            return const Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: ShimmerTile());
          }))
        : SliverList(
            delegate: SliverChildBuilderDelegate(childCount: newsList.length,
                (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: NewsTile(article: newsList[index]),
            );
          }));
  }
}
