import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:travel_seila/themes/colors.dart';
import 'package:travel_seila/widgets/expansion_cards/card_item.dart';
import 'package:travel_seila/widgets/paragraph_list/paragraph.dart';
import 'package:travel_seila/widgets/paragraph_list/topic.dart';

class Information extends StatelessWidget {
  const Information({super.key});

  @override
  Widget build(BuildContext context) {
    final plainTextStyle = Theme.of(context).textTheme.bodySmall!;

    return ExpansionCardWidget(
      cardTitle: 'Information',
      child: Topic(
        title: 'Tips',
        paragraphs: [
          //? INTRO
          const ParagraphCustom(
            text:
                "To start off, even if you're not a 'new' player, this page is still useful if you would like a general progression guide. In that case, you may prefer to move onto the the Classes & Items sections below. Otherwise, continue reading below!",
            marks: [],
          ),
          //? HP MANA STAMINA
          ParagraphCustom(
            text:
                """The Red Bar next to your portrait at the top-left shows your Health Points (HP). You lose HP by being attacked.
The Blue Bar shows your Mana Points (MP). This resource is used for your skills.
The Green Bar shows your Stamina Points (SP). You can use your Stamina by pressing the Space Bar and clicking where you want to go in quick succession. This will make you walk much faster than normal until you get to where you clicked.
Rest to quickly regenerate all of these (either press X or the red and blue Heart icon at the bottom-right).""",
            marks: [
              EasyRichTextPattern(
                targetString: 'Health Points (HP)',
                hasSpecialCharacters: true,
                style: plainTextStyle.copyWith(color: AppColors.healthRed),
              ),
              EasyRichTextPattern(
                targetString: 'Mana Points (MP)',
                hasSpecialCharacters: true,
                style: plainTextStyle.copyWith(color: AppColors.manaBlue),
              ),
              EasyRichTextPattern(
                targetString: 'Stamina Points (SP)',
                hasSpecialCharacters: true,
                style: plainTextStyle.copyWith(color: AppColors.staminaGreen),
              ),
            ],
          ),

          // //? XP AND CURRENCY
          // const ParagraphCustom(
          //   spans: [
          //     TextSpan(
          //       text: 'These are the point and currency systems in the game:',
          //     ),
          //   ],
          // ),
          // //? Experience
          // ParagraphCustom(
          //   customBullet: '1. ',
          //   indentLevel: 1,
          //   spans: [
          //     TextSpan(
          //       children: [
          //         TextSpan(
          //           text: 'Experience Points ',
          //           style: plainText.copyWith(fontWeight: FontWeight.w500),
          //         ),
          //         TextSpan(
          //           text: '(XP)',
          //           style: plainText.copyWith(
          //             color: AppColors.secondary,
          //             fontWeight: FontWeight.w500,
          //           ),
          //         ),
          //         const TextSpan(
          //           text:
          //               '\nTo level up, you gain XP by defeating enemies and completing quests - currently, the level limit is 100. You can find the best methods of getting XP in the XP Section below.',
          //         )
          //       ],
          //     ),
          //   ],
          // ),
          // //? Class Points
          // ParagraphCustom(
          //   customBullet: '2. ',
          //   indentLevel: 1,
          //   spans: [
          //     TextSpan(
          //       children: [
          //         TextSpan(
          //           text: 'Class Points ',
          //           style: plainText.copyWith(fontWeight: FontWeight.w500),
          //         ),
          //         TextSpan(
          //           text: '(CP)',
          //           style: plainText.copyWith(
          //             color: AppColors.classRed,
          //             fontWeight: FontWeight.w500,
          //           ),
          //         ),
          //         const TextSpan(
          //           text:
          //               '\nThese are like XP but just for your class - when you defeat enemies, it ranks up the class you have equipped up to Rank 10. Extra abilities and passives are unlocked the higher your rank is. The amount of CP you earn is based on the enemy\'s level, just like XP.',
          //         )
          //       ],
          //     ),
          //   ],
          // ),
          // //? Reputation
          // ParagraphCustom(
          //   customBullet: '3. ',
          //   indentLevel: 1,
          //   spans: [
          //     TextSpan(
          //       children: [
          //         TextSpan(
          //           text: 'Reputation ',
          //           style: plainText.copyWith(fontWeight: FontWeight.w500),
          //         ),
          //         TextSpan(
          //           text: '(REP)',
          //           style: plainText.copyWith(
          //             color: AppColors.repGreen,
          //             fontWeight: FontWeight.w500,
          //           ),
          //         ),
          //         const TextSpan(
          //           text:
          //               '\nThis is obtained from quests and is used to gain points with in-game factions (like Good, Evil, and Chaos) up to Rank 10. Some classes in the game require Rank 10 with a certain faction.',
          //         )
          //       ],
          //     ),
          //   ],
          // ),
          // //? Gold
          // ParagraphCustom(
          //   customBullet: '4. ',
          //   indentLevel: 1,
          //   spans: [
          //     TextSpan(
          //       children: [
          //         TextSpan(
          //           text: 'Gold ',
          //           style: plainText.copyWith(
          //             fontWeight: FontWeight.w500,
          //           ),
          //         ),
          //         TextSpan(
          //           text: '(GP)',
          //           style: plainText.copyWith(
          //             color: AppColors.gold,
          //             fontWeight: FontWeight.w500,
          //           ),
          //         ),
          //         const TextSpan(
          //           text:
          //               '\nThis is the base currency of the game and is used to buy many things. It\'s rewarded like XP - through kills and quests. The Gold cap is 100 million.',
          //         )
          //       ],
          //     ),
          //   ],
          // ),
          // //? Adventure Coins
          // ParagraphCustom(
          //   customBullet: '4. ',
          //   indentLevel: 1,
          //   spans: [
          //     TextSpan(
          //       children: [
          //         TextSpan(
          //           text: 'Adventure Coins ',
          //           style: plainText.copyWith(
          //             fontWeight: FontWeight.w500,
          //           ),
          //         ),
          //         TextSpan(
          //           text: '(AC)',
          //           style: plainText.copyWith(
          //             color: AppColors.adventureCoin,
          //             fontWeight: FontWeight.w500,
          //           ),
          //         ),
          //         const TextSpan(
          //           text:
          //               '\nThese are the paid currency in AQW. They are required or help to get many of the nicer items and classes in the game. 1500 ACs are given out each year for free in January (Honourable Hero - don\'t get muted or banned!), October (Birthday), and December (Frostval). You need to log in for those periods and have a confirmed email to receive them.',
          //         )
          //       ],
          //     ),
          //   ],
          // ),

          // //? Item categories
          // const ParagraphCustom(
          //   indentLevel: 0,
          //   spans: [
          //     TextSpan(
          //       text: 'For the most part, items are categorised as either:',
          //     ),
          //   ],
          // ),
          // //? Non-Rare
          // ParagraphCustom(
          //   indentLevel: 1,
          //   customBullet: '1. ',
          //   spans: [
          //     TextSpan(
          //       children: [
          //         TextSpan(
          //           text: 'Permanent/Non-Rare',
          //           style: plainText.copyWith(fontWeight: FontWeight.w500),
          //         ),
          //         const TextSpan(
          //           text: '\nThis covers any item that is always obtainable.',
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // //? Seasonal
          // ParagraphCustom(
          //   indentLevel: 1,
          //   customBullet: '2. ',
          //   spans: [
          //     TextSpan(
          //       children: [
          //         TextSpan(
          //           text: 'Seasonal',
          //           style: plainText.copyWith(fontWeight: FontWeight.w500),
          //         ),
          //         const TextSpan(
          //           text:
          //               '\nThese items are only available at a certain time/month each year.',
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // //? Rare
          // ParagraphCustom(
          //   indentLevel: 1,
          //   customBullet: '3. ',
          //   spans: [
          //     TextSpan(
          //       children: [
          //         TextSpan(
          //           text: 'Rare',
          //           style: plainText.copyWith(fontWeight: FontWeight.w500),
          //         ),
          //         const TextSpan(
          //           text:
          //               '\nThese items are available for a short time then permanently leave the game. However, there may be future reskins of them if it\'s a cosmetic.',
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // //? Pseudo-Rare
          // ParagraphCustom(
          //   indentLevel: 1,
          //   customBullet: '4. ',
          //   spans: [
          //     TextSpan(
          //       children: [
          //         TextSpan(
          //           text: 'Pseudo-Rare',
          //           style: plainText.copyWith(fontWeight: FontWeight.w500),
          //         ),
          //         const TextSpan(
          //           text:
          //               '\nThere is another type of Rare called Pseudo-Rare where an item can still be obtained but a requirement for it is Rare.',
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // //? Special Offer
          // ParagraphCustom(
          //   indentLevel: 1,
          //   customBullet: '5. ',
          //   spans: [
          //     TextSpan(
          //       children: [
          //         TextSpan(
          //           text: 'Special Offer',
          //           style: plainText.copyWith(fontWeight: FontWeight.w500),
          //         ),
          //         const TextSpan(
          //           text:
          //               '\nThese are items that are obtained by purchasing something, usually through Heromart or by buying ACs or membership. They are claimed from within the Book of Lore, which is the Book icon button.',
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // //? Member
          // ParagraphCustom(
          //   indentLevel: 1,
          //   customBullet: '6. ',
          //   spans: [
          //     TextSpan(
          //       children: [
          //         TextSpan(
          //           text: 'Member',
          //           style: plainText.copyWith(fontWeight: FontWeight.w500),
          //         ),
          //         const TextSpan(
          //           text:
          //               '\nThis is an item sub-category, meaning it can also be any of the above item types. An item with yellow text can only be bought and used by people who have membership',
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // //? AC
          // ParagraphCustom(
          //   indentLevel: 1,
          //   customBullet: '7. ',
          //   spans: [
          //     TextSpan(
          //       children: [
          //         TextSpan(
          //           text: 'AC',
          //           style: plainText.copyWith(fontWeight: FontWeight.w500),
          //         ),
          //         const TextSpan(
          //           text:
          //               '\nThis is another sub-category. AC items can be any of the above item-types but it would also have an AC tag, which looks like a gold dragon in a circle that says AC.',
          //         ),
          //         const TextSpan(
          //           text:
          //               '\nAC items can\'t be deleted but they can be banked for free (see below). The exception to this is Treasure Potions, which are rewarded from the Wheel of Doom and are unbankable to prevent a bug.',
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
