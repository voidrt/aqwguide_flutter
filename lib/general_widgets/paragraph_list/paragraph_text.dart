import 'package:flutter/material.dart';
import 'package:travel_seila/general_widgets/text_widgets/plain_text.dart';
import 'package:travel_seila/themes/colors.dart';

class ParagraphTextItem extends StatelessWidget {
  const ParagraphTextItem({
    Key? key,
    required this.title,
    required this.topicText,
  }) : super(key: key);

  final String title;
  final String topicText;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTile(
        enabled: false,
        leading: const Icon(
          Icons.square,
          size: 7,
          color: AppColors.textWhite,
        ),
        title: PlainText(
          string: topicText,
          isSelectable: true,
          isInParagraph: true,
        ),
      ),
    ]);
  }
}
