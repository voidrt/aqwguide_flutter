import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/core/repository/content_list.dart';
import 'package:travel_seila/themes/paddings.dart';

class ContentsList extends ConsumerWidget {
  const ContentsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final contents = ref.watch(contentsListProvider);

    return Expanded(
      child: ListView.builder(
        itemCount: contents.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: PaddingMeasure.gg,
            ),
            title: Text(contents[index]),
          );
        },
      ),
    );
  }
}
