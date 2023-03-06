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
