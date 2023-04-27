import 'package:flutter/material.dart';
import 'package:travel_seila/core/utils/utils.dart';
import 'package:travel_seila/themes/colors.dart';
import 'package:travel_seila/themes/paddings.dart';

class PlainText extends StatelessWidget {
  const PlainText({
    Key? key,
    required this.string,
    this.isInParagraph = false,
    this.isSelectable = false,
  }) : super(key: key);

  final bool isInParagraph;
  final bool isSelectable;
  final String string;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: isInParagraph ? PaddingMeasure.xxl : 0),
      child: isSelectable
          ? SelectableText(
              string,
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.bodySmall,
            )
          : Text(
              string,
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.bodySmall,
            ),
    );
  }
}

class HyperlinkedPlainText extends StatelessWidget {
  const HyperlinkedPlainText({
    Key? key,
    required this.string,
    required this.link,
  }) : super(key: key);

  final String string;
  final Uri link;

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      string,
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
            decoration: TextDecoration.underline,
            decorationColor: AppColors.textWhite.withOpacity(0.7),
          ),
      onTap: () => Utils.launchUrlInBrowser(link),
    );
  }
}
