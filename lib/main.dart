import 'package:flutter/material.dart';
import 'package:news_now/screens/home_screen.dart';
import 'package:news_now/services/news_service.dart';

void main() {
  NewsService.getNews(category: 'sports');
  runApp(const NewsNow());
}


class NewsNow extends StatelessWidget {
  const NewsNow({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}