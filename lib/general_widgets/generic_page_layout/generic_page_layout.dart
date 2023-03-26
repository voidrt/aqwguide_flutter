import 'package:flutter/material.dart';
import 'package:travel_seila/general_widgets/text_widgets/page_title.dart';
import 'package:travel_seila/themes/colors.dart';
import 'package:travel_seila/themes/paddings.dart';

class GenericPageLayout extends StatelessWidget {
  const GenericPageLayout({
    Key? key,
    required this.title,
    required this.constraints,
    required this.expandingParagraphs,
  }) : super(key: key);

  final String title;
  final BoxConstraints constraints;
  final Widget expandingParagraphs;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          PageTitle(titleString: title),
          Container(
            color: AppColors.background,
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: PaddingMeasure.g * 1.5),
              child: expandingParagraphs,
            ),
          ),
        ],
      ),
    );
  }
}
