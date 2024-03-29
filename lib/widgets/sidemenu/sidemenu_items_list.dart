import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_seila/themes/paddings.dart';
import 'package:travel_seila/widgets/text_widgets/plain_text.dart';
import 'package:travel_seila/themes/colors.dart';

class SideMenuItems extends StatelessWidget {
  const SideMenuItems({
    super.key,
    required this.title,
    required this.onTap,
    required this.isSelected,
  });

  final String title;
  final dynamic onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final tileDecoration =
        isSelected ? AppColors.secondary : AppColors.textWhite;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Paddings.defaultSize),
      child: ListTile(
        horizontalTitleGap: Paddings.small,
        leading: Icon(
          Icons.arrow_forward_ios,
          color: tileDecoration,
          size: 15,
        ),
        title: PlainText(
          string: title,
          textColor: tileDecoration,
        ),
        onTap: () {
          context.goNamed(
            title.toLowerCase(),
          );
          onTap;
        },
      ),
    );
  }
}
