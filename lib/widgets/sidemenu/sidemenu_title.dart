import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_seila/widgets/text_widgets/aqwg_title.dart';
import 'package:travel_seila/themes/colors.dart';
import 'package:travel_seila/themes/paddings.dart';

class SideMenuTitle extends StatelessWidget {
  const SideMenuTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          overlayColor: MaterialStateProperty.all(AppColors.primary),
          onTap: () => context.goNamed('home'),
          child: const AqwgTitle(titleString: 'AQWG'),
        ),
        const Divider(
          thickness: 0.5,
          height: 1,
          indent: 15,
          endIndent: 15,
          color: AppColors.textWhite,
        ),
        const SizedBox(height: PaddingMeasure.m)
      ],
    );
  }
}
