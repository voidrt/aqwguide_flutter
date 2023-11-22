import 'package:flutter/material.dart';
import 'package:travel_seila/widgets/text_widgets/label_text.dart';
import 'package:travel_seila/widgets/text_widgets/plain_text.dart';
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
          (index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: PaddingMeasure.m),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("• "),
                Expanded(
                  child: PlainText(
                    string: texts[index],
                    isInParagraph: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
