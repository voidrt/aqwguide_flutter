import 'package:flutter/material.dart';
import 'package:travel_seila/general_widgets/text_widgets/label_text.dart';
import 'package:travel_seila/general_widgets/text_widgets/plain_text.dart';
import 'package:travel_seila/themes/colors.dart';
import 'package:travel_seila/themes/paddings.dart';

class ParagraphTextList extends StatelessWidget {
  const ParagraphTextList({
    Key? key,
    required this.topicTitle,
    required this.texts,
  }) : super(key: key);

  final String topicTitle;
  final List<String> texts;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InnerLabelText(
          string: topicTitle,
          isSelectable: true,
        ),
        const SizedBox(
          height: PaddingMeasure.p,
        ),
        ...List.generate(
          texts.length,
          (index) => ListTile(
            enabled: false,
            leading: const Icon(
              Icons.square,
              size: 7,
              color: AppColors.textWhite,
            ),
            title: PlainText(
              string: texts[index],
              isSelectable: true,
              isInParagraph: true,
            ),
          ),
        ),
      ],
    );
  }
}
