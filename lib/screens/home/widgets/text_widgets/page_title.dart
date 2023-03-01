import 'package:flutter/material.dart';
import 'package:travel_seila/themes/paddings.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({
    Key? key,
    required this.titleString,
  }) : super(key: key);

  final String titleString;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: PaddingMeasure.exg,
        horizontal: PaddingMeasure.gg,
      ),
      child: Text(
        titleString,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
