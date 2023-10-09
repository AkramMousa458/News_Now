import 'package:flutter/material.dart';
import 'package:news_now/constants.dart';
import 'package:news_now/models/category_model.dart';
import 'package:news_now/screens/category_screen.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel category;
  final String country;

  const CategoryCard(
      {super.key, required this.category, required this.country});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryScreen(
              country: country, category: category.categoryName);
        }));
      },
      child: Container(
        margin: const EdgeInsets.only(right: 8),
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
      ),
    );
  }
}
