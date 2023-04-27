import 'package:flutter/material.dart';
import 'package:travel_seila/widgets/text_widgets/label_text.dart';
import 'package:travel_seila/themes/paddings.dart';
import 'package:travel_seila/widgets/text_widgets/plain_text.dart';

class CreditText extends StatelessWidget {
  const CreditText({
    Key? key,
    required this.creditTitle,
    required this.names,
  }) : super(key: key);

  final String creditTitle;
  final List<String> names;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: PaddingMeasure.pp),
          child: InnerLabelText(
            string: creditTitle,
          ),
        ),
        ...names.map(
          (name) => PlainText(string: '- $name  '),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: PaddingMeasure.m,
            bottom: PaddingMeasure.p,
          ),
          child: Divider(
            indent: PaddingMeasure.xxl * 3.5,
            endIndent: PaddingMeasure.xxl * 3.5,
          ),
        ),
      ],
    );
  }
}
