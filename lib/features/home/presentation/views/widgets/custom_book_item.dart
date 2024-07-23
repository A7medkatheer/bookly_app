import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem(
      {super.key, this.height, this.circleSize, required this.imageUrl});
  final double? height;
  final double? circleSize;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(circleSize ?? 16),
        child: AspectRatio(
          aspectRatio: (height ?? 2.8) / 4,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: imageUrl,
            errorWidget: (context, url, error) => const Icon(Icons.error),
            placeholder: (context, url) => Center(
              child: Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.red,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(circleSize ?? 16),
                    child: AspectRatio(
                      aspectRatio: (height ?? 2.8) / 4,
                      child: CachedNetworkImage(
                        fit: BoxFit.fill,
                        imageUrl: imageUrl,
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                  )),
            ),
          ),
        ));
  }
}
