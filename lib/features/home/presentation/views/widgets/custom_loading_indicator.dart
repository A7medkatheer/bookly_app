import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.red,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 5, // Number of shimmer items to display
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                SizedBox(
                  height: 125,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: AspectRatio(
                        aspectRatio: (2.7) / 4,
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Container(
                        height: 20, // Height of the shimmer item
                        width: 200, // Width of the shimmer item
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Container(
                        height: 20, // Height of the shimmer item
                        width: 200, // Width of the shimmer item
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 15, // Height of the shimmer item
                      width: 60, // Width of the shimmer item
                      color: Colors.white,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 15, // Height of the shimmer item
                          width: 50, // Width of the shimmer item
                          color: Colors.white,
                        ),
                        const SizedBox(width: 150),
                        Container(
                          height: 15, // Height of the shimmer item
                          width: 50, // Width of the shimmer item
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
