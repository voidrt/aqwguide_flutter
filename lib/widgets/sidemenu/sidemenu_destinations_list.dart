import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_seila/themes/paddings.dart';
import 'package:travel_seila/widgets/text_widgets/plain_text.dart';
import 'package:travel_seila/themes/colors.dart';

class SideMenuDestinations extends StatelessWidget {
  const SideMenuDestinations({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: PaddingMeasure.gg),
      child: InkWell(
        onTap: () => context.goNamed(
          title.toLowerCase(),
        ),
        child: Row(
          children: [
            const Icon(
              Icons.arrow_forward_ios,
              color: AppColors.textWhite,
              size: 15,
            ),
            const SizedBox(
              width: PaddingMeasure.p,
            ),
            PlainText(
              string: title,
              isInParagraph: false,
            ),
          ],
        ),
      ),
    );
  }
}
