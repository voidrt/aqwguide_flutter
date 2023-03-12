import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/core/repository/new_player_info.dart';
import 'package:travel_seila/screens/widgets/text_widgets/label_text.dart';
import 'package:travel_seila/themes/paddings.dart';

class ExpandingTextParagraph extends ConsumerStatefulWidget {
  const ExpandingTextParagraph({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<ExpandingTextParagraph> createState() =>
      _ExpandingTextParagraphState();
}

class _ExpandingTextParagraphState
    extends ConsumerState<ExpandingTextParagraph> {
  @override
  Widget build(BuildContext context) {
    final info = ref.watch(newPlayerInfo);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: PaddingMeasure.exg * 2),
      child: Column(
        children: [
          ExpansionTile(
            title: LabelText(titleString: info.keys.elementAt(0)),
            children: const [],
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
