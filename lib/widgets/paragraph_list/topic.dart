import 'package:flutter/material.dart';
import 'package:travel_seila/widgets/paragraph_list/paragraph.dart';
import 'package:travel_seila/widgets/text_widgets/label_text.dart';
import 'package:travel_seila/themes/paddings.dart';

class Topic extends StatelessWidget {
  const Topic({
    Key? key,
    required this.title,
    required this.paragraphs,
  }) : super(key: key);

  final String title;
  final List<ParagraphCustom> paragraphs;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InnerLabelText(
          string: title,
          isSelectable: true,
        ),
        const SizedBox(
          height: Paddings.small,
        ),
        ...paragraphs,
      ],
    );
  }
}
