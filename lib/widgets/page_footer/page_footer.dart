import 'package:flutter/material.dart';
import 'package:travel_seila/widgets/text_widgets/footer_text.dart';
import 'package:travel_seila/themes/colors.dart';

class PageFooter extends StatelessWidget {
  const PageFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 10,
      width: MediaQuery.of(context).size.width,
      color: AppColors.darkGrey500,
      child: const Center(
        child: FooterText(
          string: 'For feedback and / or reporting bugs, message: void#7066',
        ),
      ),
    );
  }
}
