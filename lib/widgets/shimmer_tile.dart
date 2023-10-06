import 'package:flutter/material.dart';
import 'package:news_now/constants.dart';
import 'package:news_now/widgets/shimmer_container.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerTile extends StatelessWidget {
  const ShimmerTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: kmainColor.withAlpha(100),
      highlightColor: kmainColor.withAlpha(40),
      child: const Padding(
        padding: EdgeInsets.only(top: 0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              child: ShimmerContainer(
                  width: double.infinity, height: 180, curve: 12),
            ),
            SizedBox(height: 10),
            ShimmerContainer(width: 350, height: 15, curve: 6),
            SizedBox(height: 10),
            ShimmerContainer(width: 400, height: 12, curve: 4),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.date_range_rounded,
                    size: 16,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 3),
                  ShimmerContainer(width: 100, height: 12, curve: 4)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
