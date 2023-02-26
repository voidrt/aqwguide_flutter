import 'dart:ui';

import 'package:flutter/material.dart';

class BlurredImageContainer extends StatelessWidget {
  const BlurredImageContainer({
    Key? key,
    required this.child,
    required this.assetImage,
    this.blurLevel,
  }) : super(key: key);

  final String assetImage;
  final Widget child;
  final double? blurLevel;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/$assetImage'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(
                sigmaX: blurLevel ?? 5, sigmaY: blurLevel ?? 5),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.0),
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
