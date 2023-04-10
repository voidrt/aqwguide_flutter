import 'package:flutter/material.dart';
import 'package:travel_seila/general_widgets/paragraph_list/paragraph_text_list.dart';
import 'package:travel_seila/general_widgets/text_widgets/label_text.dart';
import 'package:travel_seila/models/page_info_model.dart';
import 'package:travel_seila/themes/colors.dart';
import 'package:travel_seila/themes/paddings.dart';

class ExpansionCardWidget extends StatelessWidget {
  const ExpansionCardWidget({
    Key? key,
    required this.cardTitle,
    required this.cardSubtopics,
  }) : super(key: key);

  final String cardTitle;
  final List<PageSubtopic> cardSubtopics;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          LabelText(string: cardTitle),
          const Divider(
            thickness: 0.5,
            height: 1,
          ),
        ],
      ),
      trailing: const Icon(
        Icons.keyboard_arrow_down_rounded,
        size: 20,
        color: AppColors.textWhite,
      ),
      childrenPadding: const EdgeInsets.only(
        left: PaddingMeasure.xxl * 1.4,
        right: PaddingMeasure.xxl * 1.8,
        bottom: PaddingMeasure.g,
      ),
      tilePadding: const EdgeInsets.fromLTRB(
        PaddingMeasure.xxl * 1.4, //left
        PaddingMeasure.g, //top
        PaddingMeasure.xxl * 1.4, //right
        PaddingMeasure.p, //bottom
      ),
      children: [
        ...List.generate(
          cardSubtopics.length,
          (index) {
            final subtopic = cardSubtopics[index];

            return ParagraphTextList(
              topicTitle: subtopic.subtopicTitle,
              texts: subtopic.texts,
            );
          },
        ),
      ],
    );
  }
}
