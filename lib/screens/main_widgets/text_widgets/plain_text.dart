import 'package:flutter/material.dart';
import 'package:travel_seila/themes/paddings.dart';

class PlainText extends StatelessWidget {
  const PlainText({
    Key? key,
    required this.string,
    required this.isInParagraph,
  }) : super(key: key);

  final bool isInParagraph;
  final String string;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: isInParagraph ? PaddingMeasure.exg : 0),
      child: RichText(
        textAlign: TextAlign.justify,
        text: TextSpan(
          text: string,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
    );
  }
}
