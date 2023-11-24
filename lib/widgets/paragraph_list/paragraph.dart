import 'package:flutter/material.dart';
import 'package:travel_seila/themes/paddings.dart';

class ParagraphCustom extends StatelessWidget {
  const ParagraphCustom({
    super.key,
    required this.spans,
  });

  final List<TextSpan> spans;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: PaddingMeasure.p),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("• "),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodySmall,
                children: spans,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
