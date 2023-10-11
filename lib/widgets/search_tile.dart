import 'package:flutter/material.dart';
import 'package:news_now/screens/home_screen.dart';

class SearchTile extends StatefulWidget {
  const SearchTile({super.key});

  @override
  State<SearchTile> createState() => _SearchTileState();
}

class _SearchTileState extends State<SearchTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: TextField(
        onSubmitted: (value) {
          keyWord = value;
          Navigator.pop(context);
          setState(() {
            
          });
        },
        onChanged: (value) {
          keyWord = value;
          setState(() {
            
          });
        },
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0.0, horizontal: 18),
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
