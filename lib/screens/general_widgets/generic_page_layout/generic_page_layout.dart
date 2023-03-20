import 'package:flutter/material.dart';
import 'package:travel_seila/screens/general_widgets/expanding_text/expanding_text_widget.dart';
import 'package:travel_seila/screens/general_widgets/text_widgets/page_title.dart';

import '../page_body/page_body.dart';

class GenericPageLayout extends StatelessWidget {
  const GenericPageLayout({
    Key? key,
    required this.title,
    required this.constraints,
    required this.expandingParagraphs,
  }) : super(key: key);

  final String title;
  final BoxConstraints constraints;
  final List<ExpandingTextWidget> expandingParagraphs;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(titleString: title),
          PageBody(
            constraints: constraints,
            paragraphs: expandingParagraphs,
          ),
        ],
      ),
    );
  }
}
