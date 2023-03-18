import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/screens/new_player/widgets/expanding_text/expanding_text_widget.dart';
import 'package:travel_seila/themes/colors.dart';
import 'package:travel_seila/themes/paddings.dart';

class PageBody extends ConsumerWidget {
  const PageBody({
    Key? key,
    required this.constraints,
    required this.paragraphs,
  }) : super(key: key);

  final BoxConstraints constraints;
  final List<ExpandingTextWidget> paragraphs;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: AppColors.background,
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          const SizedBox(
            height: PaddingMeasure.g * 1.5,
          ),
          ...paragraphs
        ],
      ),
    );
  }
}
