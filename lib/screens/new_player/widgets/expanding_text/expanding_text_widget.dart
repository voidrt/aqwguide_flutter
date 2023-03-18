import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/core/repository/page_info_provider.dart';
import 'package:travel_seila/screens/main_widgets/text_widgets/label_text.dart';
import 'package:travel_seila/screens/new_player/widgets/paragraph_list/paragraph_text_list.dart';
import 'package:travel_seila/themes/paddings.dart';

class ExpandingTextWidget extends ConsumerStatefulWidget {
  const ExpandingTextWidget({
    Key? key,
    required this.subtitle,
  }) : super(key: key);

  final String subtitle;

  @override
  ConsumerState<ExpandingTextWidget> createState() =>
      _ExpandingTextParagraphState();
}

class _ExpandingTextParagraphState extends ConsumerState<ExpandingTextWidget> {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> pageInfo = ref
        .watch(
          guidePagesModelProvider(0),
        )
        .value as Map<String, dynamic>;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: PaddingMeasure.exg * 2),
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          ExpansionTile(
            title: LabelText(
              titleString: widget.subtitle,
            ),
            children: [
              ParagraphTextList(
                json: pageInfo,
                topics: pageInfo['topics'],
                texts: pageInfo['texts'],
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
