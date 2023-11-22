import 'package:flutter/material.dart';
import 'package:travel_seila/widgets/paragraph_list/paragraph_text_list.dart';
import 'package:travel_seila/widgets/text_widgets/label_text.dart';
import 'package:travel_seila/core/models/sections_and_topics.dart';
import 'package:travel_seila/themes/colors.dart';
import 'package:travel_seila/themes/paddings.dart';

class ExpansionCardWidget extends StatefulWidget {
  const ExpansionCardWidget({
    Key? key,
    required this.cardTitle,
    required this.cardTopics,
  }) : super(key: key);

  final String cardTitle;
  final List<Topic> cardTopics;

  @override
  State<ExpansionCardWidget> createState() => _ExpansionCardWidgetState();
}

class _ExpansionCardWidgetState extends State<ExpansionCardWidget> {
  late bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      onExpansionChanged: (val) => setState(() {
        isActive = val;
      }),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          LabelText(string: widget.cardTitle),
          const Divider(
            thickness: 0.5,
            height: 1,
          ),
        ],
      ),
      trailing: Icon(
        isActive
            ? Icons.keyboard_arrow_up_rounded
            : Icons.keyboard_arrow_down_rounded,
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
          widget.cardTopics.length,
          (index) {
            final topic = widget.cardTopics[index];

            return ParagraphTextList(
              topicTitle: topic.topicTitle,
              texts: topic.texts,
            );
          },
        ),
      ],
    );
  }
}
