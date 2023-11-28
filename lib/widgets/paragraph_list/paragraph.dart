import 'package:flutter/material.dart';
import 'package:travel_seila/themes/paddings.dart';

class ParagraphCustom extends StatelessWidget {
  const ParagraphCustom({
    super.key,
    required this.spans,
    this.indentLevel = 0,
    this.customBullet,
  });

  final List<TextSpan> spans;
  final String? customBullet;
  final int indentLevel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: PaddingMeasure.p,
        horizontal: PaddingMeasure.defaultSize * indentLevel,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            customBullet ?? '• ',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodySmall,
                children: spans,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
