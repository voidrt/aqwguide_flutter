import 'package:flutter/material.dart';
import 'package:travel_seila/themes/paddings.dart';

class PlainText extends StatelessWidget {
  const PlainText({
    Key? key,
    required this.string,
    this.isInParagraph = false,
    this.isSelectable = false,
  }) : super(key: key);

  final bool isInParagraph;
  final bool isSelectable;
  final String string;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: isInParagraph ? PaddingMeasure.exg : 0),
      child: isSelectable
          ? SelectableText(
              string,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.bodySmall,
            )
          : Text(
              string,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.bodySmall,
            ),
    );
  }
}
