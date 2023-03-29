import 'package:flutter/material.dart';
import 'package:travel_seila/themes/paddings.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({
    Key? key,
    required this.pageTitle,
  }) : super(key: key);

  final String pageTitle;

  @override
  Widget build(BuildContext context) {
    final Size mediaQuerySize = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: PaddingMeasure.exg * 1.5),
      height: mediaQuerySize.height / 2.5,
      child: Center(
        child: Text(
          pageTitle,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
