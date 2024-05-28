import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:travel_seila/themes/paddings.dart';

class ParagraphCustom extends StatelessWidget {
  const ParagraphCustom({
    super.key,
    required this.text,
    required this.marks,
    this.indentLevel = 0,
    this.customBullet,
  });

  final String text;
  final List<EasyRichTextPattern> marks;
  final String? customBullet;
  final int indentLevel;

  @override
  Widget build(BuildContext context) {
    final plainTextStyle = Theme.of(context).textTheme.bodySmall!;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: Paddings.small,
        horizontal: Paddings.big * indentLevel,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            customBullet ?? '•  ',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Expanded(
            child: EasyRichText(
              text,
              selectable: true,
              defaultStyle: plainTextStyle,
              patternList: marks,
            ),
          ),
        ],
      ),
    );
  }
}
