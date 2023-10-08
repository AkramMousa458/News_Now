import 'package:flutter/material.dart';
import 'package:news_now/widgets/shimmer_tile.dart';

class ShimmerListView extends StatelessWidget {
  const ShimmerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: 10, (context, index) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: ShimmerTile(),
      );
    }));
  }
}
