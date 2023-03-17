import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/core/repository/page_info_provider.dart';

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
    final Map<String, dynamic>? pageInfo = ref
        .watch(
          guidePagesInfo('New Player'),
        )
        .value;

    return Container();
  }
}
