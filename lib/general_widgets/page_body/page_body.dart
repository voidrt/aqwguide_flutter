import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/themes/paddings.dart';

class PageBody extends ConsumerWidget {
  const PageBody({
    Key? key,
    required this.constraints,
    required this.paragraphs,
  }) : super(key: key);

  final BoxConstraints constraints;
  final Widget paragraphs;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: PaddingMeasure.g * 1.5,
        ),
        paragraphs
      ],
    );
  }
}
