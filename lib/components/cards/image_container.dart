import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final String imagePath;
  final double height;
  final double width;
  final BorderRadius borderRadius;

  const ImageContainer({
    Key? key,
    required this.imagePath,
    this.height = 250,
    this.width = 330,
    this.borderRadius = const BorderRadius.only(
      topLeft: Radius.circular(50.0),
    ),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: borderRadius,
        child: Image(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
