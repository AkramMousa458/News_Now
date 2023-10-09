import 'package:flutter/material.dart';
import 'package:news_now/widgets/news_list_view_builder.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen(
      {super.key,
      required this.country,
      required this.category});
  final String category, country;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(category),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: CustomScrollView(slivers: [
            NewsListViewBuilder(country: country, category: category)
          ]),
        ));
  }
}
