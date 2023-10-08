import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
        child: Center(
            child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.error, color: Colors.red),
          ),
          Text(
            'Please check the internet \n or try again later',
            textAlign: TextAlign.center,
          ),
        ],
      )));
  }
}