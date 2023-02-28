import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/themes/colors.dart';
import 'package:travel_seila/themes/paddings.dart';

class GridViewItem extends ConsumerWidget {
  const GridViewItem({
    Key? key,
    required this.label,
    required this.width,
    required this.widgetRoute,
  }) : super(key: key);

  final String label;
  final double width;
  final String widgetRoute;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, widgetRoute),
      child: Container(
        width: width,
        padding: const EdgeInsets.symmetric(horizontal: PaddingMeasure.pp),
        decoration: BoxDecoration(
          color: Colors.white10,
          border: Border.all(
            width: 1,
            color: AppColors.textWhite,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: PaddingMeasure.pp),
            child: Text(label, textAlign: TextAlign.center),
          ),
        ),
      ),
    );
  }
}
