import 'package:flutter/material.dart';
import 'package:travel_seila/screens/new_player/widgets/expanding_text_paragraph.dart';
import 'package:travel_seila/screens/new_player/widgets/generic_page_layout.dart';
import 'package:travel_seila/screens/widgets/scaffold_custom/scaffold_custom.dart';

class NewPlayerScreen extends StatelessWidget {
  const NewPlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ScaffoldWithSideMenu(
          constraints: constraints,
          expandedFlex: 4,
          backgroundImage: 'fantasy 1.png',
          backgroundImageBlur: 5,
          child: GenericPageLayout(
            title: 'New PLayer',
            constraints: constraints,
            paragraphs: const [
              ExpandingTextParagraph(),
              ExpandingTextParagraph(),
              ExpandingTextParagraph(),
              ExpandingTextParagraph(),
            ],
          ),
        );
      },
    );
  }
}
