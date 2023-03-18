import 'package:flutter/material.dart';
import 'package:travel_seila/screens/main_widgets/scaffold_custom/scaffold_custom.dart';
import 'package:travel_seila/screens/main_widgets/text_widgets/label_text.dart';

class ErrorPageWidget extends StatelessWidget {
  const ErrorPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => ScaffoldWithSideMenu(
        constraints: constraints,
        backgroundImage: 'dage.png',
        backgroundImageBlur: 5,
        child: const Center(
          child: LabelText(
            titleString:
                'An error has occured with our API, please check in later',
          ),
        ),
      ),
    );
  }
}
