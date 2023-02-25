import 'package:flutter/material.dart';
import 'package:travel_seila/themes/paddings.dart';

class ContentsList extends StatelessWidget {
  ContentsList({Key? key}) : super(key: key);

  final List<String> contentList = [
    'Home',
    'Credits',
    'Announcements: 1 Oct',
    'Latest Update: 15 Aug',
    'Farming List',
    'Reputation',
    'New Player',
    'Classes',
    'Items',
    'Story',
    'ACs',
    'Gold',
    'Boosts',
    'Badges',
    'Acronyms',
    'Enhancing',
    'Membership',
    'Ultra Bosses',
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: contentList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: PaddingMeasure.gg,
            ),
            title: Text(contentList[index]),
          );
        },
      ),
    );
  }
}
