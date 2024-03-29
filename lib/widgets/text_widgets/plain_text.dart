import 'package:flutter/material.dart';
import 'package:travel_seila/core/utils/utils.dart';
import 'package:travel_seila/themes/colors.dart';
import 'package:travel_seila/themes/paddings.dart';

class PlainText extends StatelessWidget {
  const PlainText({
    required this.string,
    Key? key,
    this.isInParagraph = false,
    this.isSelectable = false,
    this.textColor = AppColors.textWhite,
  }) : super(key: key);

  final bool isInParagraph;
  final bool isSelectable;
  final String string;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(right: isInParagraph ? Paddings.superDuperBig : 0),
      child: isSelectable
          ? SelectableText(
              string,
              textAlign: TextAlign.start,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: textColor),
            )
          : Text(
              string,
              textAlign: TextAlign.start,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: textColor),
            ),
    );
  }
}

class HyperlinkedPlainText extends StatelessWidget {
  const HyperlinkedPlainText({
    Key? key,
    required this.string,
    required this.link,
    this.textColor,
  }) : super(key: key);

  final String string;
  final Uri link;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      string,
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
            decoration: TextDecoration.underline,
            decorationColor: textColor?.withOpacity(0.7) ??
                AppColors.textWhite.withOpacity(0.7),
            color: textColor ?? AppColors.textWhite,
          ),
      onTap: () => Utils.launchUrlInBrowser(link),
    );
  }
}
