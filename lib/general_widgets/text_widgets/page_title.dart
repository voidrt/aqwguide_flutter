import 'package:flutter/material.dart';
import 'package:travel_seila/general_widgets/image_blur/blurred_image.dart';
import 'package:travel_seila/themes/paddings.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({
    Key? key,
    required this.pageTitle,
    this.backgroundImage,
    this.backgroundImageBlur,
  }) : super(key: key);

  final String pageTitle;
  final String? backgroundImage;
  final double? backgroundImageBlur;

  @override
  Widget build(BuildContext context) {
    final Size mediaQuerySize = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: PaddingMeasure.exg * 1.5),
      height: mediaQuerySize.height / 2.5,
      child: BlurredImageBackground(
        assetImage: backgroundImage ?? 'fantasy 2.png',
        blurLevel: 10,
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
