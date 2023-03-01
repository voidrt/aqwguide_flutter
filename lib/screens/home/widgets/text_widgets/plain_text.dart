import 'package:flutter/material.dart';

class PlainText extends StatelessWidget {
  const PlainText({
    Key? key,
    required this.titleString,
  }) : super(key: key);

  final String titleString;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: titleString,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
