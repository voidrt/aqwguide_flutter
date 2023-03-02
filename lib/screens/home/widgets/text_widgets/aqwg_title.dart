import 'package:flutter/material.dart';
import 'package:travel_seila/themes/paddings.dart';
import 'package:travel_seila/themes/text_themes.dart';

class AqwgTitle extends StatelessWidget {
  const AqwgTitle({
    Key? key,
    required this.titleString,
  }) : super(key: key);

  final String titleString;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      margin: const EdgeInsets.symmetric(
        vertical: PaddingMeasure.gg,
        horizontal: PaddingMeasure.p,
      ),
      child: Text(
        titleString,
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(fontSize: FontSize.g),
      ),
    );
  }
}
