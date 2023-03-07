import 'package:flutter/material.dart';
import 'package:travel_seila/screens/new_player/widgets/expanding_text_paragraph.dart';
import 'package:travel_seila/themes/colors.dart';
import 'package:travel_seila/themes/paddings.dart';

class ScreenBody extends StatelessWidget {
  const ScreenBody({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: AppColors.background,
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(
                height: PaddingMeasure.g * 1.5,
              ),
              ExpandingTextParagraph(
                paragraphTitle: 'Information',
                labels: ['Tips'],
                paragraphs: [
                  '''To start off, even if you're not a 'new' player, this page is still useful if you would like a general progression guide. In that case, you may prefer to move onto the the Classes & Items sections below. Otherwise, continue reading below!''',
                  ''''The Red Bar next to your portrait at the top-left shows your Health Points (HP). You lose HP by being attacked. 
The Blue Bar shows your Mana Points (MP). This resource is used for your skills. 
The Green Bar shows your Stamina Points (SP). You can use your Stamina by pressing the Space Bar and clicking where you want to go in quick succession. This will make you walk much faster than normal until you get to where you clicked. Rest to quickly regenerate all of these (either press X or the red and blue Heart icon at the bottom-right).''',
                  'These are the point and currency systems in the game:',
                  '''    Experience Points (XP)
    To level up, you gain XP by defeating enemies and completing quests - currently, the level limit is 100. You can find the best methods of getting XP in the XP Section below. 

    Class Points (CP)
    These are like XP but just for your class - when you defeat enemies, it ranks up the class you have equipped up to Rank 10. Extra abilities and passives are unlocked the higher your rank is. The amount of CP you earn is based on the enemy's level, just like XP.

    Reputation (Rep)
    his is obtained from quests and is used to gain points with in-game factions (like Good, Evil, and Chaos) up to Rank 10. Some classes in the game require Rank 10 with a certain faction.

    Gold
    This is the base currency of the game and is used to buy many things. It's rewarded like XP - through kills and quests. The Gold cap is 100 million.

    Adventure Coins (ACs)
    These are the paid currency in AQW. They are required or help to get many of the nicer items and classes in the game. 1500 ACs are given out each year for free in January (Honourable Hero - don't get muted or banned!), October (Birthday), and December (Frostval). You need to log in for those periods and have a confirmed email to receive them.
''',
                ],
              ),
              ExpandingTextParagraph(
                paragraphTitle: 'Information',
                labels: ['Tips'],
                paragraphs: [
                  '''To start off, even if you're not a 'new' player, this page is still useful if you would like a general progression guide. In that case, you may prefer to move onto the the Classes & Items sections below. Otherwise, continue reading below!''',
                  ''''The Red Bar next to your portrait at the top-left shows your Health Points (HP). You lose HP by being attacked.
          The Blue Bar shows your Mana Points (MP). This resource is used for your skills.
          The Green Bar shows your Stamina Points (SP). You can use your Stamina by pressing the Space Bar and clicking where you want to go in quick succession. This will make you walk much faster than normal until you get to where you clicked. 
          Rest to quickly regenerate all of these (either press X or the red and blue Heart icon at the bottom-right).''',
                ],
              ),
              ExpandingTextParagraph(
                paragraphTitle: 'Information',
                labels: ['Tips'],
                paragraphs: [
                  '''To start off, even if you're not a 'new' player, this page is still useful if you would like a general progression guide. In that case, you may prefer to move onto the the Classes & Items sections below. Otherwise, continue reading below!''',
                  ''''The Red Bar next to your portrait at the top-left shows your Health Points (HP). You lose HP by being attacked.
          The Blue Bar shows your Mana Points (MP). This resource is used for your skills.
          The Green Bar shows your Stamina Points (SP). You can use your Stamina by pressing the Space Bar and clicking where you want to go in quick succession. This will make you walk much faster than normal until you get to where you clicked. 
          Rest to quickly regenerate all of these (either press X or the red and blue Heart icon at the bottom-right).''',
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
