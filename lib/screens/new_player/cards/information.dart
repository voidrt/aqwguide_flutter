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
                    style: plainText.copyWith(color: AppColors.healthRed),
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
                    style: plainText.copyWith(color: AppColors.manaBlue),
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
                    style: plainText.copyWith(color: AppColors.staminaGreen),
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
          const ParagraphCustom(spans: [])
        ],
      ),
    );
  }
}
