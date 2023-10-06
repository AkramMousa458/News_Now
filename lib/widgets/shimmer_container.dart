import 'package:flutter/material.dart';

class ShimmerContainer extends StatelessWidget {
  const ShimmerContainer(
      {super.key,
      required this.width,
      required this.height,
      required this.curve});

  final double width, height, curve;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(curve)),
    );
  }
}
