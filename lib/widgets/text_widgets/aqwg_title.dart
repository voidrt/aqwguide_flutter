import 'package:flutter/material.dart';
import 'package:travel_seila/themes/colors.dart';
import 'package:travel_seila/themes/paddings.dart';
import 'package:travel_seila/themes/text_themes.dart';

class AqwgTitle extends StatelessWidget {
  const AqwgTitle({
    Key? key,
    required this.titleString,
    this.textColor = AppColors.textWhite,
  }) : super(key: key);

  final String titleString;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      margin: const EdgeInsets.symmetric(
        vertical: Paddings.big,
      ),
      child: Text(
        titleString,
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(fontSize: FontSize.g, color: textColor),
      ),
    );
  }
}
