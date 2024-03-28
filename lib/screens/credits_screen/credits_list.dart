import 'package:flutter/material.dart';
import 'package:travel_seila/themes/colors.dart';
import 'package:travel_seila/themes/paddings.dart';
import 'package:travel_seila/widgets/text_widgets/label_text.dart';
import 'package:travel_seila/widgets/text_widgets/plain_text.dart';

class ArtistCreditList extends StatelessWidget {
  const ArtistCreditList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: Paddings.extraSmall),
          child: InnerLabelText(
            string: 'Art',
          ),
        ),
        ...artistCreditsList.map(
          (art) => Padding(
            padding: const EdgeInsets.symmetric(
              vertical: Paddings.extraSmall - 2,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PlainText(string: art['title']),
                HyperlinkedPlainText(
                  string: art["autor"],
                  link: Uri.parse(art["link"]),
                  textColor: AppColors.secondary,
                ),
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: Paddings.medium,
            bottom: Paddings.small,
          ),
          child: Divider(
            indent: Paddings.superDuperBig * 3.5,
            endIndent: Paddings.superDuperBig * 3.5,
          ),
        ),
      ],
    );
  }
}

final List<Map<String, dynamic>> artistCreditsList = [
  {
    'title': 'AdventureQuest Worlds\'s Golden Dragon by ',
    'autor': 'Artix Entertainment',
    'link': 'https://www.aq.com/'
  },
  {
    'title': 'Dage fanart by ',
    'autor': 'Angel-an',
    'link': 'https://angel_an.artstation.com/projects/L34d1w',
  },
  {
    'title': 'Nulgath fanart by ',
    'autor': 'Angel-an',
    'link': 'https://angel_an.artstation.com/projects/ELLBoe',
  },
  {
    'title': 'Credits Screen - ',
    'autor': 'Artist unknown',
    'link':
        'https://www.uhdpaper.com/2020/04/nature-forest-mountain-digital-art-4k.html',
  },
  {
    'title': 'Void Highlord by ',
    'autor': 'Pen-Syls (Reddit)',
    'link':
        'https://www.reddit.com/r/AQW/comments/hw77kv/done_i_think_overdid_it_not_hd_btw/',
  },
];
