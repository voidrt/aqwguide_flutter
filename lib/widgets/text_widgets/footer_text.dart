import 'package:flutter/material.dart';
import 'package:travel_seila/themes/paddings.dart';
import 'package:travel_seila/themes/text_themes.dart';

class FooterText extends StatelessWidget {
  const FooterText({Key? key, required this.string}) : super(key: key);

  final String string;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        Paddings.medium,
      ),
      child: SelectableText(
        string,
        textAlign: TextAlign.start,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: FontSize.defaultBody - 4,
            ),
      ),
    );
  }
}
