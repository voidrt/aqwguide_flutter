import 'package:flutter/material.dart';
import 'package:travel_seila/core/models/sections_and_topics.dart';
import 'package:travel_seila/widgets/expansion_cards/card_item.dart';

class ExpansionCardsList extends StatelessWidget {
  const ExpansionCardsList({
    Key? key,
    required this.infoSectionList,
  }) : super(key: key);

  final List<InfoSection> infoSectionList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...infoSectionList.map(
          (section) {
            return ExpansionCardWidget(
              cardTitle: section.title,
              cardTopics: section.topics,
            );
          },
        ),
      ],
    );
  }
}
