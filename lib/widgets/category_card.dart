import 'package:flutter/material.dart';
import 'package:news_now/constants.dart';

class CategoryCard extends StatelessWidget {

  final String catImage, catName;

  const CategoryCard({super.key, required this.catImage, required this.catName});

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
              image: AssetImage(catImage), fit: BoxFit.cover),
          color: kmainColor,
          borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
        catName,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      )),
    );
  }
}
