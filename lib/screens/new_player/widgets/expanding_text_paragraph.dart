import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/screens/home/widgets/text_widgets/label_text.dart';
import 'package:travel_seila/screens/new_player/widgets/unordered_list.dart';
import 'package:travel_seila/themes/paddings.dart';

class ExpandingTextParagraph extends ConsumerStatefulWidget {
  const ExpandingTextParagraph({
    Key? key,
    required this.paragraphTitle,
    required this.labels,
    required this.paragraphs,
  }) : super(key: key);

  final String paragraphTitle;
  final List<String> labels;
  final List<String> paragraphs;

  @override
  ConsumerState<ExpandingTextParagraph> createState() =>
      _ExpandingTextParagraphState();
}

class _ExpandingTextParagraphState
    extends ConsumerState<ExpandingTextParagraph> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: PaddingMeasure.exg),
      child: Column(
        children: [
          ExpansionTile(
            title: LabelText(titleString: widget.paragraphTitle),
            children: [
              UnorderedList(
                title: widget.labels[0],
                paragraphs: widget.paragraphs,
              ),
            ],
          ),
          const Divider(
            thickness: 0.5,
            height: 1,
          ),
        ],
      ),
    );
  }
}
