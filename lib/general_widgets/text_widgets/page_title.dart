import 'package:flutter/material.dart';
import 'package:travel_seila/themes/colors.dart';
import 'package:travel_seila/themes/paddings.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({
    Key? key,
    required this.titleString,
  }) : super(key: key);

  final String titleString;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(PaddingMeasure.exg * 1.5),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            bottom: -3,
            right: 4,
            child: Text(
              titleString,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: AppColors.darkGrey1000),
            ),
          ),
          Positioned(
            child: Text(
              titleString,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
