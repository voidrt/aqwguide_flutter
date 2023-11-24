import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HyperLinkPlainText extends StatelessWidget {
  const HyperLinkPlainText({
    Key? key,
    required this.string,
    required this.linkedRoute,
    this.textColor,
  }) : super(key: key);

  final String string;
  final String linkedRoute;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.goNamed(linkedRoute),
      child: Text(
        string,
        style: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(decoration: TextDecoration.underline, color: textColor),
      ),
    );
  }
}
