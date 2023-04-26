import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HyperLinkPlainText extends StatelessWidget {
  const HyperLinkPlainText({
    Key? key,
    required this.string,
    required this.linkedRoute,
  }) : super(key: key);

  final String string;
  final String linkedRoute;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.goNamed(linkedRoute),
      child: Text(
        string,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              decoration: TextDecoration.underline,
            ),
      ),
    );
  }
}
