import 'package:flutter/material.dart';
import 'package:travel_seila/widgets/page_footer/page_footer.dart';
import 'package:travel_seila/widgets/scaffold_custom/scaffold_custom.dart';
import 'package:travel_seila/widgets/text_widgets/page_title.dart';
import 'package:travel_seila/screens/credits_screen/credit_text_widget.dart';
import 'package:travel_seila/themes/paddings.dart';

class CreditsScreen extends StatelessWidget {
  CreditsScreen({Key? key}) : super(key: key);

  final List<Map<String, String>> namesCreditList = [
    {
      'title': 'Lead (and only) Developer',
      'names': 'voidrt',
    },
    {
      'title': 'Supporters',
      'names': 'MS Qualified',
    },
    {
      'title': 'Helpers',
      'names': 'Vero, Gasho, Fen, Exelot, Desolate, Caustic, Argleblarge, Itzem'
    },
  ];

  final List<Map<String, String>> artCreditList = [
    {
      'title': 'AdventureQuest Worlds\'s Golden Dragon',
      'names': 'Artix Entertainment',
    },
    {
      'title': 'Dage fanart',
      'names': 'Some dude',
    },
    {
      'title': 'Nulgath fanart',
      'names': 'Some dude also',
    },
    {
      'title': 'Credits Screens\'s background image',
      'names': 'Some dude also',
    },
    {
      'title': 'Void Highlord drawing',
      'names': 'Some dude also',
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
              backgroundImage: 'fantasy 1.png',
              backgroundImageBlur: 5,
              constraints: constraints,
            ),
            const SizedBox(
              height: PaddingMeasure.exg,
            ),
            ...List.generate(
              namesCreditList.length,
              (index) => CreditText(
                creditTitle: namesCreditList[index]['title']!,
                name: namesCreditList[index]['names']!,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const PageFooter(),
          ],
        ),
      );
    });
  }
}
