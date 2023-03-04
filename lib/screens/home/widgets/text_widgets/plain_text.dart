import 'package:flutter/material.dart';
import 'package:travel_seila/themes/paddings.dart';

class PlainText extends StatelessWidget {
  const PlainText({
    Key? key,
    required this.titleString,
  }) : super(key: key);

  final String titleString;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: PaddingMeasure.exg),
      child: RichText(
        text: TextSpan(
          text: titleString,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
