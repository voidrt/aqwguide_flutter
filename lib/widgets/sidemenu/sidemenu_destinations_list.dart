import 'package:flutter/material.dart';
import 'package:travel_seila/widgets/text_widgets/plain_text.dart';
import 'package:travel_seila/themes/colors.dart';

List<NavigationRailDestination> generateAllDestination(List<String> topics) {
  return List.generate(
    topics.length,
    (index) {
      return NavigationRailDestination(
        icon: const Icon(
          Icons.arrow_forward_ios,
          color: AppColors.textWhite,
          size: 15,
        ),
        padding: EdgeInsets.zero,
        label: PlainText(
          string: topics[index],
          isInParagraph: false,
        ),
      );
    },
  );
}
