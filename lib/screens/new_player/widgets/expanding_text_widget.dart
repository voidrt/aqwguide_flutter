import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/core/repository/page_info_provider.dart';
import 'package:travel_seila/screens/new_player/widgets/paragraph_list/paragraph_text_list.dart';
import 'package:travel_seila/screens/widgets/text_widgets/label_text.dart';
import 'package:travel_seila/themes/paddings.dart';

class ExpandingTextWidget extends ConsumerStatefulWidget {
  const ExpandingTextWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  ConsumerState<ExpandingTextWidget> createState() =>
      _ExpandingTextParagraphState();
}

class _ExpandingTextParagraphState extends ConsumerState<ExpandingTextWidget> {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> pageInfo = ref.watch(
      guidePagesInfo('New Player'),
    )[widget.title];

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: PaddingMeasure.exg * 2),
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          ExpansionTile(
            title: LabelText(
              titleString: widget.title,
            ),
            children: [
              ParagraphTextList(
                json: pageInfo,
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
