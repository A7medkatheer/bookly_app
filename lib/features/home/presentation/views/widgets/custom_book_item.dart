import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem(
      {super.key, this.height, this.circleSize, required this.imageUrl});
  final double? height;
  final double? circleSize;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: (height ?? 2.8) / 4,
      child: Container(
        height: 100,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(circleSize ?? 16.0)),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
              imageUrl,
            ),
          ),
        ),
      ),
    );
  }
}
