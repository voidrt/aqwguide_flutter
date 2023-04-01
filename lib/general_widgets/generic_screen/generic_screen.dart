import 'package:flutter/material.dart';
import 'package:travel_seila/general_widgets/expansion_card/expansion_card.dart';
import 'package:travel_seila/general_widgets/page_footer/page_footer.dart';
import 'package:travel_seila/general_widgets/text_widgets/page_title.dart';
import 'package:travel_seila/models/page_info_model.dart';

class GenericPageLayout extends StatelessWidget {
  const GenericPageLayout({
    Key? key,
    required this.constraints,
    required this.pageTitle,
    required this.pageTopics,
    this.backgroundImage,
  }) : super(key: key);

  final BoxConstraints constraints;
  final String pageTitle;
  final List<PageTopic> pageTopics;
  final String? backgroundImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        PageTitle(
          pageTitle: pageTitle,
          backgroundImage: backgroundImage,
          backgroundImageBlur: 5,
          constraints: constraints,
        ),
        Column(
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
        const SizedBox(
          height: 200,
        ),
        const PageFooter()
      ],
    );
  }
}
