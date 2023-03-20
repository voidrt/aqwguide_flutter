import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/models/page_info_model.dart';
import 'package:travel_seila/screens/general_widgets/paragraph_list/paragraph_text_list.dart';
import 'package:travel_seila/screens/general_widgets/text_widgets/label_text.dart';
import 'package:travel_seila/themes/paddings.dart';

class ExpandingTextWidget extends ConsumerStatefulWidget {
  const ExpandingTextWidget({
    Key? key,
    required this.expandingTextTitle,
    required this.topic,
  }) : super(key: key);

  final String expandingTextTitle;
  final PageSubtopic topic;

  @override
  ConsumerState<ExpandingTextWidget> createState() =>
      _ExpandingTextParagraphState();
}

class _ExpandingTextParagraphState extends ConsumerState<ExpandingTextWidget> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size.height;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: PaddingMeasure.exg * 2),
      height: mediaQuery,
      child: Column(
        children: [
          ExpansionTile(
            title: LabelText(
              titleString: widget.expandingTextTitle,
            ),
            children: [
              ParagraphTextList(
                topicTitle: widget.topic.subtopicTitle,
                texts: widget.topic.texts,
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: PaddingMeasure.exg),
            child: Divider(
              thickness: 0.5,
              height: 1,
            ),
          ),
        ],
      ),
    );
  }
}
