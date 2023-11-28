import 'package:flutter/material.dart';
import 'package:travel_seila/themes/colors.dart';
import 'package:travel_seila/widgets/expansion_cards/card_item.dart';
import 'package:travel_seila/widgets/paragraph_list/paragraph.dart';
import 'package:travel_seila/widgets/paragraph_list/topic.dart';

class Information extends StatelessWidget {
  const Information({super.key});

  @override
  Widget build(BuildContext context) {
    final plainText = Theme.of(context).textTheme.bodySmall!;

    return ExpansionCardWidget(
      cardTitle: 'Information',
      child: Topic(
        title: 'Tips',
        paragraphs: [
          //? INTRO
          const ParagraphCustom(
            spans: [
              TextSpan(
                text:
                    "To start off, even if you're not a 'new' player, this page is still useful if you would like a general progression guide. In that case, you may prefer to move onto the the Classes & Items sections below. Otherwise, continue reading below!",
              ),
            ],
          ),
          //? HP MANA STAMINA
          ParagraphCustom(
            spans: [
              TextSpan(
                children: [
                  const TextSpan(
                    text:
                        'The Red Bar next to your portrait at the top-left shows your ',
                  ),
                  TextSpan(
                    text: 'Health Points (HP)',
                    style: plainText.copyWith(
                      color: AppColors.healthRed,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const TextSpan(
                    text: '. You lose HP by being attacked.',
                  )
                ],
              ),
              TextSpan(
                children: [
                  const TextSpan(text: ' The Blue Bar shows your '),
                  TextSpan(
                    text: 'Mana Points (MP)',
                    style: plainText.copyWith(
                      color: AppColors.manaBlue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const TextSpan(
                    text: '. This resource is used for your skills.',
                  )
                ],
              ),
              TextSpan(
                children: [
                  const TextSpan(text: ' The Green Bar shows your '),
                  TextSpan(
                    text: 'Stamina Points (SP)',
                    style: plainText.copyWith(
                      color: AppColors.staminaGreen,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const TextSpan(
                    text:
                        '. You can use your Stamina by pressing the Space Bar and clicking where you want to go in quick succession. This will make you walk much faster than normal until you get to where you clicked.',
                  )
                ],
              ),
              const TextSpan(
                text:
                    '\nRest to quickly regenerate all of these (either press X or the red and blue Heart icon at the bottom-right).',
              ),
            ],
          ),
          //? XP AND CURRENCY
          const ParagraphCustom(
            spans: [
              TextSpan(
                text: 'These are the point and currency systems in the game:',
              ),
            ],
          ),
          //? Experience
          ParagraphCustom(
            customBullet: '1. ',
            indentLevel: 1,
            spans: [
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Experience Points ',
                    style: plainText.copyWith(fontWeight: FontWeight.w500),
                  ),
                  TextSpan(
                    text: '(XP)',
                    style: plainText.copyWith(
                      color: AppColors.secondary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const TextSpan(
                    text:
                        '\nTo level up, you gain XP by defeating enemies and completing quests - currently, the level limit is 100. You can find the best methods of getting XP in the XP Section below.',
                  )
                ],
              ),
            ],
          ),
          //? Class Points
          ParagraphCustom(
            customBullet: '2. ',
            indentLevel: 1,
            spans: [
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Class Points ',
                    style: plainText.copyWith(fontWeight: FontWeight.w500),
                  ),
                  TextSpan(
                    text: '(CP)',
                    style: plainText.copyWith(
                      color: AppColors.classRed,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const TextSpan(
                    text:
                        '\nThese are like XP but just for your class - when you defeat enemies, it ranks up the class you have equipped up to Rank 10. Extra abilities and passives are unlocked the higher your rank is. The amount of CP you earn is based on the enemy\'s level, just like XP.',
                  )
                ],
              ),
            ],
          ),
          //? Reputation
          ParagraphCustom(
            customBullet: '3. ',
            indentLevel: 1,
            spans: [
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Reputation ',
                    style: plainText.copyWith(fontWeight: FontWeight.w500),
                  ),
                  TextSpan(
                    text: '(REP)',
                    style: plainText.copyWith(
                      color: AppColors.repGreen,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const TextSpan(
                    text:
                        '\nThis is obtained from quests and is used to gain points with in-game factions (like Good, Evil, and Chaos) up to Rank 10. Some classes in the game require Rank 10 with a certain faction.',
                  )
                ],
              ),
            ],
          ),
          //? Gold
          ParagraphCustom(
            customBullet: '4. ',
            indentLevel: 1,
            spans: [
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Gold ',
                    style: plainText.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: '(GP)',
                    style: plainText.copyWith(
                      color: AppColors.gold,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const TextSpan(
                    text:
                        '\nThis is the base currency of the game and is used to buy many things. It\'s rewarded like XP - through kills and quests. The Gold cap is 100 million.',
                  )
                ],
              ),
            ],
          ),
          ParagraphCustom(
            customBullet: '4. ',
            indentLevel: 1,
            spans: [
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Adventure Coins ',
                    style: plainText.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: '(AC)',
                    style: plainText.copyWith(
                      color: AppColors.adventureCoin,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const TextSpan(
                    text:
                        '\nThese are the paid currency in AQW. They are required or help to get many of the nicer items and classes in the game. 1500 ACs are given out each year for free in January (Honourable Hero - don\'t get muted or banned!), October (Birthday), and December (Frostval). You need to log in for those periods and have a confirmed email to receive them.',
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
