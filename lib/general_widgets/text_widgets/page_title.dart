import 'package:flutter/material.dart';
import 'package:travel_seila/general_widgets/blurred_image_widget/blurred_image.dart';
import 'package:travel_seila/themes/paddings.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({
    Key? key,
    required this.pageTitle,
    required this.constraints,
    this.backgroundImage,
    this.backgroundImageBlur,
  }) : super(key: key);

  final String pageTitle;
  final BoxConstraints constraints;
  final String? backgroundImage;
  final double? backgroundImageBlur;

  @override
  Widget build(BuildContext context) {
    return BlurredImageBackground(
      assetImage: backgroundImage ?? 'fantasy 1.png',
      blurLevel: 10,
      height: constraints.maxHeight / 2,
      width: constraints.maxWidth,
      child: Container(
        height: constraints.maxHeight,
        padding: const EdgeInsets.symmetric(horizontal: PaddingMeasure.exg),
        child: Center(
          child: Text(
            pageTitle,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
    );
  }
}
