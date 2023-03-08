import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/screens/new_player/widgets/expanding_text_paragraph.dart';
import 'package:travel_seila/themes/colors.dart';
import 'package:travel_seila/themes/paddings.dart';

class ScreenBody extends ConsumerWidget {
  const ScreenBody({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: Container(
        color: AppColors.background,
        alignment: Alignment.topCenter,
        child: Column(
          children: const [
            SizedBox(
              height: PaddingMeasure.g * 1.5,
            ),
            ExpandingTextParagraph(),
            ExpandingTextParagraph(),
            ExpandingTextParagraph(),
            ExpandingTextParagraph(),
            ExpandingTextParagraph(),
            ExpandingTextParagraph(),
            ExpandingTextParagraph(),
            ExpandingTextParagraph(),
          ],
        ),
      ),
    );
  }
}
