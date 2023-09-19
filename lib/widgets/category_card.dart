import 'package:flutter/material.dart';
import 'package:news_now/constants.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

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
          image: const DecorationImage(
              image: AssetImage('assets/technology.jpeg'), fit: BoxFit.cover),
          color: kmainColor,
          borderRadius: BorderRadius.circular(10)),
      child: const Center(
          child: Text(
        'Technology',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      )),
    );
  }
}
