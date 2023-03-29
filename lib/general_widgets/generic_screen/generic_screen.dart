import 'package:flutter/material.dart';
import 'package:travel_seila/general_widgets/expansion_card/expansion_card.dart';
import 'package:travel_seila/general_widgets/text_widgets/page_title.dart';
import 'package:travel_seila/models/page_info_model.dart';
import 'package:travel_seila/themes/colors.dart';

class GenericPageLayout extends StatelessWidget {
  const GenericPageLayout({
    Key? key,
    required this.pageTitle,
    required this.pageTopics,
  }) : super(key: key);

  final String pageTitle;
  final List<PageTopic> pageTopics;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        PageTitle(
          pageTitle: pageTitle,
        ),
        Container(
          color: AppColors.background,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ...pageTopics.map(
                (topic) {
                  return ExpansionCardWidget(
                    cardTitle: topic.title,
                    cardSubtopics: topic.subtopicsList,
                  );
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
