import 'package:flutter/material.dart';
import 'package:travel_seila/screens/new_player/widgets/screen_body.dart';
import 'package:travel_seila/screens/widgets/scaffold_custom/scaffold_custom.dart';
import 'package:travel_seila/screens/widgets/text_widgets/page_name.dart';

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
          child: SingleChildScrollView(
            child: Column(
              children: [
                const PageTitle(titleString: 'New Player'),
                ScreenBody(
                  constraints: constraints,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
