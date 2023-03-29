import 'package:flutter/material.dart';
import 'package:travel_seila/general_widgets/text_widgets/label_text.dart';
import 'package:travel_seila/general_widgets/text_widgets/plain_text.dart';
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
      childrenPadding: const EdgeInsets.only(
        left: PaddingMeasure.exg * 1.4,
        bottom: PaddingMeasure.g,
      ),
      tilePadding: const EdgeInsets.fromLTRB(
        PaddingMeasure.exg, //left
        PaddingMeasure.g, //top
        PaddingMeasure.exg, //right
        PaddingMeasure.p, //bottom
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
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
      children: const [
        PlainText(
          string: 'hey',
        ),
        PlainText(
          string: 'hey',
        ),
        PlainText(
          string: 'hey',
        ),
        PlainText(
          string: 'hey',
        ),
        PlainText(
          string: 'hey',
        ),
        PlainText(
          string: 'hey',
        ),
        PlainText(
          string: 'hey',
        ),
        PlainText(
          string: 'hey',
        ),
        PlainText(
          string: 'hey',
        ),
      ],
    );
  }
}
