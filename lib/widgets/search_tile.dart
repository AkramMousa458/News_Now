import 'package:flutter/material.dart';

class SearchTile extends StatelessWidget {
  const SearchTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 18),
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
    );
  }
}