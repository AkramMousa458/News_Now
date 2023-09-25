import 'package:flutter/material.dart';
import 'package:news_now/constants.dart';
import 'package:news_now/widgets/categories_list_view.dart';
import 'package:news_now/widgets/news_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              ' Now',
              style: TextStyle(color: kmainColor, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          const CategoriesListView(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 18),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                hintText: 'Search news',
                hintStyle: TextStyle(
                  color: Colors.grey[500],
                ),
                suffixIcon: const Icon(Icons.search_rounded, size: 30),
              ),
            ),
          ),
          const NewsTile(),       
        ],
      ),
    );
  }
}
