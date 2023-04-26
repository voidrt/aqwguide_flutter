import 'package:flutter/material.dart';
import 'package:travel_seila/widgets/expansion_cards/cards_list.dart';
import 'package:travel_seila/widgets/page_footer/page_footer.dart';
import 'package:travel_seila/widgets/text_widgets/page_title.dart';
import 'package:travel_seila/core/models/sections_and_topics.dart';

class GenericPageLayout extends StatelessWidget {
  const GenericPageLayout({
    Key? key,
    required this.constraints,
    required this.pageTitle,
    required this.pageInfo,
    this.backgroundImage,
    this.backgroundImageBlur,
  }) : super(key: key);

  final BoxConstraints constraints;
  final String pageTitle;
  final List<InfoSection> pageInfo;
  final String? backgroundImage;
  final double? backgroundImageBlur;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        PageTitle(
          pageTitle: pageTitle,
          backgroundImage: backgroundImage,
          backgroundImageBlur: backgroundImageBlur,
          constraints: constraints,
        ),
        ExpansionCardsList(
          infoSectionList: pageInfo,
        ),
        const SizedBox(
          height: 200,
        ),
        const PageFooter()
      ],
    );
  }
}
