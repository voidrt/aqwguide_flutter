import 'package:flutter/material.dart';
import 'package:travel_seila/screens/new_player/widgets/paragraph_list/paragraph_text.dart';
import 'package:travel_seila/screens/main_widgets/text_widgets/label_text.dart';
import 'package:travel_seila/themes/paddings.dart';

class ParagraphTextList extends StatelessWidget {
  const ParagraphTextList({
    Key? key,
    required this.json,
    required this.topics,
    required this.texts,
  }) : super(key: key);

  final Map<String, dynamic> json;
  final List<String> topics;
  final List<String> texts;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final topic = topics[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InnerLabelText(titleString: topic),
                const SizedBox(
                  height: PaddingMeasure.p,
                ),
                ParagraphTextItem(
                  title: topic,
                  topicTextList: texts,
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
