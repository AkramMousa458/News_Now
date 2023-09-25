import 'package:flutter/material.dart';
import 'package:news_now/constants.dart';
import 'package:news_now/models/category_model.dart';

class CategoryCard extends StatelessWidget {

  final CategoryModel category;

  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      height: 100,
      width: 170,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              blurRadius: 4,
              offset: Offset(0, 5),
              spreadRadius: -5,
              color: Color.fromARGB(192, 0, 0, 0),
            )
          ],
          image: DecorationImage(
              image: AssetImage(category.cateoryImage), fit: BoxFit.cover),
          color: kmainColor,
          backgroundBlendMode: BlendMode.multiply,
          borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
        category.categoryName,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      )),
    );
  }
}
