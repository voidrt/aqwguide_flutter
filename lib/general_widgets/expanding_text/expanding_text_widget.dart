import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/models/page_info_model.dart';
import 'package:travel_seila/general_widgets/paragraph_list/paragraph_text_list.dart';
import 'package:travel_seila/general_widgets/text_widgets/label_text.dart';
import 'package:travel_seila/themes/paddings.dart';

class ExpandingTextWidget extends ConsumerStatefulWidget {
  const ExpandingTextWidget({
    Key? key,
    required this.expandingTextTitle,
    required this.subtopics,
  }) : super(key: key);

  final String expandingTextTitle;
  final List<PageSubtopic> subtopics;

  @override
  ConsumerState<ExpandingTextWidget> createState() =>
      _ExpandingTextParagraphState();
}

class _ExpandingTextParagraphState extends ConsumerState<ExpandingTextWidget> {
  @override
  Widget build(BuildContext context) {
    final subtopics = widget.subtopics;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: PaddingMeasure.exg),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ExpansionTile(
            title: LabelText(
              titleString: widget.expandingTextTitle,
            ),
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: PaddingMeasure.g),
                child: Divider(
                  thickness: 0.5,
                  height: 1,
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: subtopics.length,
                itemBuilder: (context, index) => ParagraphTextList(
                  topicTitle: subtopics[index].subtopicTitle,
                  texts: subtopics[index].texts,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: PaddingMeasure.pp,
              bottom: PaddingMeasure.g,
            ),
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
