import 'package:flutter/material.dart';
import 'package:travel_seila/general_widgets/text_widgets/label_text.dart';
import 'package:travel_seila/general_widgets/text_widgets/plain_text.dart';
import 'package:travel_seila/themes/paddings.dart';

class CreditText extends StatelessWidget {
  const CreditText({
    Key? key,
    required this.creditTitle,
    required this.name,
  }) : super(key: key);

  final String creditTitle;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: PaddingMeasure.p),
      child: Column(
        children: [
          LabelText(
            string: creditTitle,
            padding: PaddingMeasure.pp,
          ),
          PlainText(string: name),
        ],
      ),
    );
  }
}
