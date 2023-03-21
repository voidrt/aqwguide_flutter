import 'package:flutter/material.dart';
import 'package:travel_seila/general_widgets/paragraph_list/paragraph_text.dart';
import 'package:travel_seila/general_widgets/text_widgets/label_text.dart';
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
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InnerLabelText(
              titleString: topicTitle,
              isSelectable: true,
            ),
            const SizedBox(
              height: PaddingMeasure.p,
            ),
            ...List.generate(
              texts.length,
              (index) => ParagraphTextItem(
                title: topicTitle,
                topicText: texts[index],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
