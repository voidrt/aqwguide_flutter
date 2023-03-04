import 'package:flutter/material.dart';
import 'package:travel_seila/screens/home/widgets/text_widgets/label_text.dart';
import 'package:travel_seila/screens/home/widgets/text_widgets/plain_text.dart';

class UnorderedList extends StatelessWidget {
  const UnorderedList({
    Key? key,
    required this.title,
    required this.paragraphs,
  }) : super(key: key);

  final String title;
  final List<String> paragraphs;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      InnerLabelText(titleString: title),
      ...List.generate(paragraphs.length, (index) {
        return PlainText(
          titleString: paragraphs[index],
        );
      }),
    ]);
  }
}
