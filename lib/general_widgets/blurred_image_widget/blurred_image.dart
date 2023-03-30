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
      width: width,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.hardEdge,
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(
              sigmaX: 5.0,
              sigmaY: 5.0,
            ),
            child: Image.asset(
              'assets/images/$assetImage',
              fit: BoxFit.cover,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
