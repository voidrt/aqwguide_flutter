import 'package:flutter/material.dart';
import 'package:travel_seila/general_widgets/scaffold_custom/scaffold_custom.dart';
import 'package:travel_seila/general_widgets/text_widgets/page_title.dart';
import 'package:travel_seila/screens/credits_screen/credit_text_widget.dart';
import 'package:travel_seila/themes/paddings.dart';

class CreditsScreen extends StatelessWidget {
  CreditsScreen({Key? key}) : super(key: key);

  final List<Map<String, String>> creditsList = [
    {
      'title': 'Owner',
      'names': 'Void',
    },
    {
      'title': 'Supporters',
      'names': 'MS Qualified',
    },
    {
      'title': 'Helpers',
      'names': 'Vero, Gasho, Fen, Exelot, Desolate, Caustic, Argleblarge, Itzem'
    },
    {
      'title': 'Art',
      'names': 'Vero, Gasho, Fen, Exelot, Desolate, Caustic, Argleblarge, Itzem'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return ScaffoldWithSideMenu(
        constraints: constraints,
        pageIndex: 1,
        child: Column(
          children: [
            PageTitle(
              pageTitle: 'Credits',
              backgroundImage: 'aqw dragon.png',
              backgroundImageBlur: 5,
              constraints: constraints,
            ),
            const SizedBox(
              height: PaddingMeasure.exg,
            ),
            ...List.generate(
              creditsList.length,
              (index) => CreditText(
                creditTitle: creditsList[index]['title']!,
                name: creditsList[index]['names']!,
              ),
            ),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      );
    });
  }
}
