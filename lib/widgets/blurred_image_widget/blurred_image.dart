import 'dart:ui';

import 'package:flutter/material.dart';

class BlurredImageBackground extends StatelessWidget {
  const BlurredImageBackground({
    Key? key,
    required this.child,
    required this.assetImage,
    required this.height,
    required this.width,
    this.blurLevel,
  }) : super(key: key);

  final Widget child;
  final double height;
  final double width;
  final String assetImage;
  final double? blurLevel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(
                sigmaX: blurLevel ?? 5,
                sigmaY: blurLevel ?? 5,
              ),
              child: Image.asset(
                'assets/images/$assetImage',
                fit: BoxFit.cover,
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
