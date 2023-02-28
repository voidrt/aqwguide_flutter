import 'package:flutter/material.dart';
import 'package:travel_seila/themes/colors.dart';
import 'package:travel_seila/themes/paddings.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({
    Key? key,
    required this.label,
    required this.width,
  }) : super(key: key);

  final String label;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: PaddingMeasure.pp),
      decoration: BoxDecoration(
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
    );
  }
}
