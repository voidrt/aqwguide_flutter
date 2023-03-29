import 'dart:ui';

import 'package:flutter/material.dart';

class BlurredImageBackground extends StatelessWidget {
  const BlurredImageBackground({
    Key? key,
    required this.child,
    required this.assetImage,
    this.blurLevel,
  }) : super(key: key);

  final Widget child;
  final String? assetImage;
  final double? blurLevel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Image.asset(
            'assets/images/${assetImage ?? 'nulgath.png'}',
            fit: BoxFit.cover,
          ),
        ),
        child,
      ],
    );
  }
}
