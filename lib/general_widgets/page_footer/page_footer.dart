import 'package:flutter/material.dart';
import 'package:travel_seila/general_widgets/text_widgets/footer_text.dart';
import 'package:travel_seila/themes/colors.dart';
import 'package:travel_seila/themes/paddings.dart';

class PageFooter extends StatelessWidget {
  const PageFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
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
                string: 'For the community, by the community',
              ),
              FooterText(
                string: 'Remade by void#7066',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
