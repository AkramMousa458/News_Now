import 'package:flutter/material.dart';
import 'package:news_now/screens/home_screen.dart';
import 'package:news_now/services/news_service.dart';
import 'package:news_now/widgets/error_message.dart';
import 'package:news_now/widgets/news_list_view.dart';
import 'package:news_now/widgets/shimmer_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
    required this.country, required this.category,
  });

  final String country, category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {

  
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: NewsService().getNews(
          category: widget.category,
          country: widget.country, keyWord: keyWord,
        ),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(newsList: snapshot.data!);
          } else if (snapshot.hasError) {
            return const ErrorMessage();
          } else {
            return const ShimmerListView();
          }
        });
  }
}
