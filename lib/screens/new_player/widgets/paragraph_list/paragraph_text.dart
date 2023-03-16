import 'package:flutter/material.dart';
import 'package:travel_seila/screens/widgets/text_widgets/plain_text.dart';

class ParagraphTextItem extends StatelessWidget {
  const ParagraphTextItem({
    Key? key,
    required this.title,
    required this.topicTextList,
  }) : super(key: key);

  final String title;
  final List<String> topicTextList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        topicTextList.length,
        (index) => ListTile(
          leading: const Icon(
            Icons.square,
            size: 7,
          ),
          enabled: false,
          title: PlainText(
            string: topicTextList[index],
            isInParagraph: true,
          ),
        ),
      ),
    );
  }
}
