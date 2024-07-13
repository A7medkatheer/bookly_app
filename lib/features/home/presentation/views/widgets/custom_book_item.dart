import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key, this.height, this.circleSize});
  final double? height;
  final double? circleSize;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: (height ?? 2.8) / 4,
      child: Container(
        height: 100,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(circleSize ?? 16.0)),
          color: Colors.red,
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              AssetsData.testImage,
            ),
          ),
        ),
      ),
    );
  }
}
