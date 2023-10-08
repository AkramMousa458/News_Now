import 'package:flutter/material.dart';
import 'package:news_now/constants.dart';
import 'package:news_now/models/article_model.dart';
import 'package:news_now/services/news_service.dart';
import 'package:news_now/widgets/error_message.dart';
import 'package:news_now/widgets/news_list_view.dart';
import 'package:news_now/widgets/shimmer_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
    required this.country,
  });

  final String country;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  List<ArticleModel> newsList = [];

  bool isLoading = true;

  @override
  void initState() {
    getNews();
    super.initState();
  }

  @override
  void didUpdateWidget(context) {
    super.didUpdateWidget(NewsListViewBuilder(country: widget.country));
    getNews();
  }

  Future<void> getNews() async {
    newsList = await NewsService()
        .getNews(category: 'general', country: widget.country);
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const ShimmerListView()
        : newsList.isNotEmpty
            ? NewsListView(newsList: newsList)
            : const ErrorMessage();
  }
}


