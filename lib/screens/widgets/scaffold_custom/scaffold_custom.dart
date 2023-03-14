import 'package:flutter/material.dart';
import 'package:travel_seila/screens/widgets/container_blur/blurred_image.dart';
import 'package:travel_seila/screens/widgets/sidemenu/sidemenu.dart';
import 'package:travel_seila/themes/colors.dart';

class ScaffoldWithSideMenu extends StatelessWidget {
  const ScaffoldWithSideMenu({
    Key? key,
    required this.child,
    required this.constraints,
    this.backgroundImage,
    this.backgroundImageBlur,
    this.expandedFlex,
  }) : super(key: key);

  final Widget child;
  final BoxConstraints constraints;
  final String? backgroundImage;
  final double? backgroundImageBlur;
  final int? expandedFlex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: BlurredImageContainer(
        assetImage: backgroundImage,
        blurLevel: backgroundImageBlur,
        constraints: constraints,
        child: Row(
          children: [
            const SideMenu(),
            const VerticalDivider(
              width: 1,
              thickness: 1,
              color: AppColors.textWhite,
            ),
            Expanded(
              flex: expandedFlex ?? 1,
              child: child,
            )
          ],
        ),
      ),
    );
  }
}
