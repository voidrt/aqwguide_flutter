import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/core/repository/content_keys.dart';
import 'package:travel_seila/screens/home/widgets/sidemenu/content_tile.dart';

class ContentsList extends ConsumerWidget {
  const ContentsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final contents = ref.watch(topicsStringProvider);

    return Expanded(
      child: ListView.builder(
        itemCount: contents.length,
        itemBuilder: (BuildContext context, int index) {
          return ContentTile(text: contents[index]);
        },
      ),
    );
  }
}
