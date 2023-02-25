import 'package:flutter/material.dart';
import 'package:travel_seila/themes/paddings.dart';

class LabelText extends StatelessWidget {
  const LabelText({
    Key? key,
    required this.titleString,
  }) : super(key: key);

  final String titleString;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: PaddingMeasure.g),
      child: RichText(
        text: TextSpan(
          text: titleString,
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
    );
  }
}
