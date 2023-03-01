import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/core/repository/topics_properties.dart';
import 'package:travel_seila/screens/home/widgets/scroll_physics.dart/ajustable_scroll.dart';
import 'package:travel_seila/screens/home/widgets/sidemenu/content_tile.dart';

class ContentsList extends ConsumerWidget {
  const ContentsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<String> contentNames = ref.watch(contentNamesProvider);
    final List<String> contentRoutes = ref.watch(contentRoutesProvider);

    return Expanded(
      child: ListView.builder(
        controller: AdjustableScrollController(),
        itemCount: contentNames.length + 1,
        itemBuilder: (BuildContext context, int index) {
          return index == 0
              ? const ContentTile(
                  text: 'Home',
                  route: '/',
                )
              : ContentTile(
                  text: contentNames[index - 1],
                  route: contentRoutes[index - 1],
                );
        },
      ),
    );
  }
}
