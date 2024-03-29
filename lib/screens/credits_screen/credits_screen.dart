import 'package:flutter/material.dart';
import 'package:travel_seila/screens/credits_screen/credits_list.dart';
import 'package:travel_seila/widgets/page_footer/page_footer.dart';
import 'package:travel_seila/widgets/scaffold_custom/scaffold_custom.dart';
import 'package:travel_seila/widgets/text_widgets/page_title.dart';
import 'package:travel_seila/screens/credits_screen/credit_text.dart';
import 'package:travel_seila/themes/paddings.dart';

class CreditsScreen extends StatelessWidget {
  CreditsScreen({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> namesCreditList = [
    {
      'title': 'Lead (and only) Developer',
      'names': ['voidrt'],
    },
    {
      'title': 'Supporters',
      'names': ['MS Qualified'],
    },
    {
      'title': 'Helpers',
      'names': [
        'Vero',
        'Gasho',
        'Fen',
        'Exelot',
        'Desolate',
        'Caustic',
        'Argleblarge',
        'Itzem'
      ],
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
              backgroundImage: 'Credits.png',
              backgroundImageBlur: 0,
              constraints: constraints,
            ),
            const SizedBox(
              height: PaddingMeasure.exg,
            ),
            ...List.generate(
              namesCreditList.length,
              (index) => CreditText(
                creditTitle: namesCreditList[index]['title']!,
                names: namesCreditList[index]['names']!,
              ),
            ),
            const ArtistCreditList(),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      );
    });
  }
}
