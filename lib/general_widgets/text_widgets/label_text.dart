import 'package:flutter/material.dart';
import 'package:travel_seila/themes/paddings.dart';
import 'package:travel_seila/themes/text_themes.dart';

class LabelText extends StatelessWidget {
  const LabelText({
    Key? key,
    required this.string,
  }) : super(key: key);

  final String string;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: PaddingMeasure.m),
      child: RichText(
        text: TextSpan(
          text: string,
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
    );
  }
}

class InnerLabelText extends StatelessWidget {
  const InnerLabelText({
    Key? key,
    required this.string,
    this.isSelectable = false,
  }) : super(key: key);

  final String string;
  final bool isSelectable;

  @override
  Widget build(BuildContext context) {
    return isSelectable
        ? SelectableText(
            string,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  fontSize: FontSize.defaultBody + 2,
                ),
          )
        : Text(
            string,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  fontSize: FontSize.defaultBody + 2,
                ),
          );
  }
}
