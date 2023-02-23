import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.titleString,
  }) : super(key: key);

  final String titleString;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: titleString,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
