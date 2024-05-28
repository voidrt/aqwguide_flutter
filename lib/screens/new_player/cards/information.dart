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
    final markTextStyle = Theme.of(context).textTheme.bodySmall!.copyWith(
          fontWeight: FontWeight.w500,
        );

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
                style: markTextStyle.copyWith(color: AppColors.healthRed),
              ),
              EasyRichTextPattern(
                targetString: 'Mana Points (MP)',
                hasSpecialCharacters: true,
                style: markTextStyle.copyWith(color: AppColors.manaBlue),
              ),
              EasyRichTextPattern(
                targetString: 'Stamina Points (SP)',
                hasSpecialCharacters: true,
                style: markTextStyle.copyWith(color: AppColors.staminaGreen),
              ),
            ],
          ),
          //? XP AND CURRENCY
          const ParagraphCustom(
            text: 'These are the point and currency systems in the game:',
            marks: [],
          ),
          //? Experience
          ParagraphCustom(
            customBullet: '1. ',
            indentLevel: 1,
            text: """Experience Points (XP)
To level up, you gain XP by defeating enemies and completing quests - currently, the level limit is 100. You can find the best methods of getting XP in the XP Section below. """,
            marks: [
              EasyRichTextPattern(
                targetString: 'Experience Points',
                hasSpecialCharacters: true,
                style: markTextStyle,
              ),
              EasyRichTextPattern(
                targetString: '(XP)',
                hasSpecialCharacters: true,
                style: markTextStyle.copyWith(color: AppColors.secondary),
              ),
              EasyRichTextPattern(
                targetString: 'XP Section',
                style: const TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
          //? Class Points
          ParagraphCustom(
            customBullet: '2. ',
            indentLevel: 1,
            text: """Class Points (CP)
These are like XP but just for your class - when you defeat enemies, it ranks up the class you have equipped up to Rank 10. Extra abilities and passives are unlocked the higher your rank is. The amount of CP you earn is based on the enemy's level, just like XP.""",
            marks: [
              EasyRichTextPattern(
                targetString: 'Class Points',
                hasSpecialCharacters: true,
                style: markTextStyle,
              ),
              EasyRichTextPattern(
                targetString: '(CP)',
                hasSpecialCharacters: true,
                style: markTextStyle.copyWith(
                  color: AppColors.classRed,
                ),
              ),
            ],
          ),
          //? Reputation
          ParagraphCustom(
            customBullet: '3. ',
            indentLevel: 1,
            text: """Reputation (Rep)
This is obtained from quests and is used to gain points with in-game factions (like Good, Evil, and Chaos) up to Rank 10. Some classes in the game require Rank 10 with a certain faction.""",
            marks: [
              EasyRichTextPattern(
                targetString: 'Reputation',
                hasSpecialCharacters: true,
                style: markTextStyle,
              ),
              EasyRichTextPattern(
                targetString: '(Rep)',
                hasSpecialCharacters: true,
                style: markTextStyle.copyWith(
                  color: AppColors.repGreen,
                ),
              ),
            ],
          ),
          //? Gold
          ParagraphCustom(
            customBullet: '4. ',
            indentLevel: 1,
            text: """Gold (GP)
This is the base currency of the game and is used to buy many things. It's rewarded like XP - through kills and quests. The Gold cap is 100 million.""",
            marks: [
              EasyRichTextPattern(
                targetString: 'Gold',
                hasSpecialCharacters: true,
                style: markTextStyle,
              ),
              EasyRichTextPattern(
                targetString: '(GP)',
                hasSpecialCharacters: true,
                style: markTextStyle.copyWith(
                  color: AppColors.gold,
                ),
              ),
            ],
          ),
          //? Adventure Coins
          ParagraphCustom(
            customBullet: '5. ',
            indentLevel: 1,
            text: """Adventure Coins (ACs)
These are the paid currency in AQW. They are required or help to get many of the nicer items and classes in the game. 1500 ACs are given out each year for free in January (Honourable Hero - don't get muted or banned!), October (Birthday), and December (Frostval). You need to log in for those periods and have a confirmed email to receive them.""",
            marks: [
              EasyRichTextPattern(
                targetString: 'Adventure Coins',
                hasSpecialCharacters: true,
                style: markTextStyle,
              ),
              EasyRichTextPattern(
                targetString: '(ACs)',
                hasSpecialCharacters: true,
                style: markTextStyle.copyWith(
                  color: AppColors.adventureCoin,
                ),
              ),
            ],
          ),

          //? Item categories
          const ParagraphCustom(
            text: 'For the most part, items are categorised as either:',
            marks: [],
          ),
          //? Non-Rare
          ParagraphCustom(
            indentLevel: 1,
            text: """Permanent/Non-Rare
This covers any item that is always obtainable.""",
            marks: [
              EasyRichTextPattern(
                targetString: 'Permanent/Non-Rare',
                style: markTextStyle,
              )
            ],
          ),
          //? Seasonal
          ParagraphCustom(
            indentLevel: 1,
            text: """Seasonal
These items are only available at a certain time/month each year.""",
            marks: [
              EasyRichTextPattern(
                targetString: 'Seasonal',
                style: markTextStyle.copyWith(
                  color: AppColors.seasonal,
                ),
              )
            ],
          ),
          //? Rare
          ParagraphCustom(
            indentLevel: 1,
            text: """Rare
These items are available for a short time then permanently leave the game. However, there may be future reskins of them if it's a cosmetic.""",
            marks: [
              EasyRichTextPattern(
                targetString: 'Rare',
                style: markTextStyle.copyWith(
                  color: AppColors.rare,
                ),
              )
            ],
          ),
          //? Pseudo-Rare
          ParagraphCustom(
            indentLevel: 1,
            text: """Pseudo-Rare
There is another type of Rare called Pseudo-Rare where an item can still be obtained but a requirement for it is Rare.""",
            marks: [
              EasyRichTextPattern(
                targetString: 'Pseudo-Rare',
                stringAfterTarget: 'There',
                style: markTextStyle.copyWith(
                  color: AppColors.pseudoRare,
                ),
              )
            ],
          ),
          //? Special Offer
          ParagraphCustom(
            indentLevel: 1,
            text: """Special Offer
These are items that are obtained by purchasing something, usually through Heromart or by buying ACs or membership. They are claimed from within the Book of Lore, which is the Book icon button.""",
            marks: [
              EasyRichTextPattern(
                targetString: 'Special Offer',
                style: markTextStyle.copyWith(
                  color: AppColors.specialOffer,
                ),
              )
            ],
          ),
          //? Member
          ParagraphCustom(
            indentLevel: 1,
            text: """Member
This is an item sub-category, meaning it can also be any of the above item types. An item with yellow text can only be bought and used by people who have membership.""",
            marks: [
              EasyRichTextPattern(
                targetString: 'Member',
                style: markTextStyle.copyWith(
                  color: AppColors.legend,
                ),
              )
            ],
          ),
          //? AC
          ParagraphCustom(
            indentLevel: 1,
            text: """AC
This is another sub-category. AC items can be any of the above item-types but it would also have an AC tag, which looks like a gold dragon in a circle that says AC.
AC items can't be deleted but they can be banked for free (see below). The exception to this is Treasure Potions, which are rewarded from the Wheel of Doom and are unbankable to prevent a bug. """,
            marks: [
              EasyRichTextPattern(
                targetString: 'AC',
                stringAfterTarget: 'This',
                style: markTextStyle.copyWith(
                  color: AppColors.adventureCoin,
                ),
              )
            ],
          ),

          //? resto
          const ParagraphCustom(
            text:
                "If you're running out of Inventory storage, you can enter the Bank by typing in the chat box /join bank. You can store items you don't need in the vault here. If it has an AC tag, it uses up none of your bank space.",
            marks: [],
          ),
          const ParagraphCustom(
            text:
                "You can make yourself stronger with enhancements from the Game Menu. To access them, click on the Treasure Chest icon at the bottom-right then on Shops > Enhancements. There are 7 enhancements you could use but only 2 are generally recommended - Lucky and Wizard. Click here for a full enhancements guide.",
            marks: [],
          ),
          const ParagraphCustom(
            text:
                "Each ability in the bar at the bottom-centre of the UI has a number assigned to it. Instead of clicking on your abilities, you should press those numbers on your keyboard. This is more efficient than clicking but isn't normally needed for your Auto Attack, which is activated with 1, as it activates automatically when you're in combat. However, for classes that rely on their Auto Attack for damage, like Abyssal Angel's Shadow, it is recommended to press 1 as well.",
            marks: [],
          ),
          const ParagraphCustom(
            text:
                "Click on the Map icon button at the bottom-right to see many of the locations (in World Map) and story chapters (in Story) in the game. Completing the 13 Lords of Chaos story, which is at the beginning of the Story tab, will help you to gain a lot of experience in the game - I highly recommend doing this first.",
            marks: [],
          ),
          const ParagraphCustom(
            text:
                "Accepted quests are not kept in the Quest Log if you log out or disconnect. Any Temporary Items that you collect aren't kept either (the Temp Inventory can be accessed from the Scroll button with the yellow exclamation mark).",
            marks: [],
          ),
          const ParagraphCustom(
            text: "If you want to know how boosts work, see this guide.",
            marks: [],
          ),
          const ParagraphCustom(
            text:
                "Events occur weekly. See here for more information on those.",
            marks: [],
          ),
          const ParagraphCustom(
            text:
                "Try joining AQW Discord servers. There are almost always people who are willing to help out.",
            marks: [],
          ),
        ],
      ),
    );
  }
}
