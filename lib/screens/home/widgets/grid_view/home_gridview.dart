import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/core/repository/content_list.dart';

class HomeGridView extends ConsumerWidget {
  const HomeGridView({
    Key? key,
    required this.deviceSize,
  }) : super(key: key);

  final BoxConstraints deviceSize;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final contents = ref.watch(contentsListProvider);

    return Container();
  }
}
