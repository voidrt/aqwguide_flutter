import 'package:flutter/material.dart';
import 'package:travel_seila/themes/colors.dart';
import 'package:travel_seila/themes/paddings.dart';
import 'package:travel_seila/themes/text_themes.dart';

class ExpandingTextParagraph extends StatelessWidget {
  const ExpandingTextParagraph({
    Key? key,
    required this.paragraphTitle,
  }) : super(key: key);

  final String paragraphTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: PaddingMeasure.exg),
      child: Column(
        children: [
          ListTile(
            title: Text(
              paragraphTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(fontSize: FontSize.g),
            ),
            trailing: const Icon(
              Icons.arrow_drop_down_sharp,
              color: AppColors.textWhite,
              size: 40,
            ),
          ),
          const SizedBox(
            height: PaddingMeasure.m,
          ),
          const Divider(
            thickness: 0.5,
            height: 1,
            indent: 15,
            endIndent: 15,
            color: AppColors.textWhite,
          )
        ],
      ),
    );
  }
}
