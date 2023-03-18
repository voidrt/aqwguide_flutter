import 'package:flutter/material.dart';
import 'package:travel_seila/screens/new_player/widgets/expanding_text/expanding_text_widget.dart';
import 'package:travel_seila/screens/new_player/widgets/page_body/page_body.dart';
import 'package:travel_seila/screens/main_widgets/text_widgets/page_name.dart';

class GenericPageLayout extends StatelessWidget {
  const GenericPageLayout({
    Key? key,
    required this.title,
    required this.constraints,
    required this.paragraphs,
  }) : super(key: key);

  final String title;
  final BoxConstraints constraints;
  final List<ExpandingTextWidget> paragraphs;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(titleString: title),
          PageBody(
            constraints: constraints,
            paragraphs: paragraphs,
          ),
        ],
      ),
    );
  }
}
