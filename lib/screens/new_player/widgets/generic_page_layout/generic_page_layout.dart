import 'package:flutter/material.dart';
import 'package:travel_seila/screens/new_player/widgets/expanding_text_widget.dart';
import 'package:travel_seila/screens/new_player/widgets/screen_body.dart';
import 'package:travel_seila/screens/widgets/text_widgets/page_name.dart';

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
          ScreenBody(
            constraints: constraints,
            paragraphs: paragraphs,
          ),
        ],
      ),
    );
  }
}
