import 'package:flutter/material.dart';
import 'package:news_now/models/category_model.dart';
import 'package:news_now/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  final List<CategoryModel> categories = const [
    CategoryModel(
        cateoryImage: 'assets/business.jpeg', categoryName: 'Bussiness'),
    CategoryModel(
        cateoryImage: 'assets/entertainment.jpeg',
        categoryName: 'Entertaiment'),
    CategoryModel(cateoryImage: 'assets/general.avif', categoryName: 'General'),
    CategoryModel(cateoryImage: 'assets/health.webp', categoryName: 'Health'),
    CategoryModel(cateoryImage: 'assets/science.avif', categoryName: 'Science'),
    CategoryModel(cateoryImage: 'assets/sports.avif', categoryName: 'Sports'),
    CategoryModel(
        cateoryImage: 'assets/technology.jpeg', categoryName: 'Technology')
  ];

  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 104,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            CategoryCard(category: categories[index]),
      ),
    );
  }
}
