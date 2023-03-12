import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/core/repository/topics_properties.dart';
import 'package:travel_seila/screens/home/grid_view/gridview_item.dart';
import 'package:travel_seila/themes/paddings.dart';

class HomeGridView extends ConsumerWidget {
  const HomeGridView({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: constraints.maxWidth / 2,
      margin: const EdgeInsets.only(right: PaddingMeasure.exg),
      child: AlignedGrid(
        constraints: constraints,
      ),
    );
  }
}

class AlignedGrid extends ConsumerWidget {
  const AlignedGrid({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  final BoxConstraints constraints;
  final double mainAxisSpacing = PaddingMeasure.defaultSize;
  final double spacing = PaddingMeasure.g;
  final columns = 6;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<String> contentNames = ref.watch(contentNamesProvider);
    final List<String> contentRoutes = ref.watch(contentRoutesProvider);

    final widgetWidth =
        (constraints.maxWidth - mainAxisSpacing * (columns - 1)) / columns;

    return SingleChildScrollView(
      child: Wrap(
        runSpacing: mainAxisSpacing,
        spacing: spacing,
        alignment: WrapAlignment.center,
        children: List.generate(
          contentNames.length,
          (index) {
            return GridViewItem(
              label: contentNames[index],
              widgetRoute: contentRoutes[index],
              width: widgetWidth,
            );
          },
        ),
      ),
    );
  }
}
