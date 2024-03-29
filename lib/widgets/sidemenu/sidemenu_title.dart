import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_seila/widgets/text_widgets/aqwg_title.dart';
import 'package:travel_seila/themes/colors.dart';
import 'package:travel_seila/themes/paddings.dart';

class SideMenuTitle extends StatelessWidget {
  const SideMenuTitle({
    Key? key,
    required this.isSelected,
  }) : super(key: key);

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final tileDecoration =
        isSelected ? AppColors.secondary : AppColors.textWhite;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          overlayColor: MaterialStateProperty.all(AppColors.primary),
          onTap: () => context.goNamed('home'),
          child: AqwgTitle(
            titleString: 'AQWG',
            textColor: tileDecoration,
          ),
        ),
        const Divider(
          thickness: 0.5,
          height: 1,
          indent: 15,
          endIndent: 15,
          color: AppColors.textWhite,
        ),
        const SizedBox(height: Paddings.medium)
      ],
    );
  }
}
