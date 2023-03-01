import 'package:flutter/material.dart';
import 'package:travel_seila/themes/colors.dart';

class ScreenBody extends StatelessWidget {
  const ScreenBody({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: AppColors.background,
      ),
    );
  }
}
