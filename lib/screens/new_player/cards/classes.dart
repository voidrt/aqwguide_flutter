import 'package:flutter/material.dart';
import 'package:travel_seila/widgets/expansion_cards/card_item.dart';
import 'package:travel_seila/widgets/paragraph_list/topic.dart';

class Classes extends StatelessWidget {
  const Classes({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExpansionCardWidget(
      cardTitle: 'Classes',
      child: Topic(
        title: 'Start here',
        paragraphs: [],
      ),
    );
  }
}
