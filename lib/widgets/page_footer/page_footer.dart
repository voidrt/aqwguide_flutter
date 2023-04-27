import 'package:flutter/material.dart';
import 'package:travel_seila/widgets/text_widgets/footer_text.dart';
import 'package:travel_seila/themes/colors.dart';
import 'package:travel_seila/themes/paddings.dart';

class PageFooter extends StatelessWidget {
  const PageFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      color: AppColors.darkGrey500,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: PaddingMeasure.m,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              FooterText(
                string:
                    'For feedback and / or reporting bugs, message: void#7066',
              ),
              FooterText(
                string: 'By the community, for the community',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
