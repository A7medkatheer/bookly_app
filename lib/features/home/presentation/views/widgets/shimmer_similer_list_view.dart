import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerSimilarListView extends StatelessWidget {
  const ShimmerSimilarListView({super.key, required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.green,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * height,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5, // Number of shimmer items to display
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: AspectRatio(
                      aspectRatio: (2.8) / 4,
                      child: Container(
                        color: Colors.white,
                      )),
                ));
          },
        ),
      ),
    );
  }
}
