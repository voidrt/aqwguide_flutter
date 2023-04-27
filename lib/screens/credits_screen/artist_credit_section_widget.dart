import 'package:flutter/material.dart';
import 'package:travel_seila/themes/paddings.dart';
import 'package:travel_seila/widgets/text_widgets/label_text.dart';
import 'package:travel_seila/widgets/text_widgets/plain_text.dart';

class ArtistCreditList extends StatelessWidget {
  ArtistCreditList({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> artistCreditsList = [
    {
      'title': 'AdventureQuest Worlds\'s Golden Dragon by Artix Entertainment',
      'link': 'https://www.aq.com/'
    },
    {
      'title': 'Dage fanart by Angel-an',
      'link': 'https://angel_an.artstation.com/projects/L34d1w',
    },
    {
      'title': 'Nulgath fanart by Angel-an also',
      'link': 'https://angel_an.artstation.com/projects/ELLBoe',
    },
    {
      'title': 'Credits Screen - Artist unknown',
      'link':
          'https://www.uhdpaper.com/2020/04/nature-forest-mountain-digital-art-4k.html',
    },
    {
      'title': 'Void Highlord by Pen-Syls (Reddit)',
      'link':
          'https://www.reddit.com/r/AQW/comments/hw77kv/done_i_think_overdid_it_not_hd_btw/',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: PaddingMeasure.pp),
          child: InnerLabelText(
            string: 'Art',
          ),
        ),
        ...artistCreditsList.map(
          (art) => Padding(
            padding:
                const EdgeInsets.symmetric(vertical: PaddingMeasure.pp - 2),
            child: HyperlinkedPlainText(
              string: art["title"],
              link: Uri.parse(art["link"]),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: PaddingMeasure.m,
            bottom: PaddingMeasure.p,
          ),
          child: Divider(
            indent: PaddingMeasure.xxl * 3.5,
            endIndent: PaddingMeasure.xxl * 3.5,
          ),
        ),
      ],
    );
  }
}
