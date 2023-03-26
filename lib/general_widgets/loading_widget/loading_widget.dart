import 'package:flutter/material.dart';
import 'package:travel_seila/general_widgets/scaffold_custom/scaffold_custom.dart';
import 'package:travel_seila/themes/colors.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    Key? key,
    this.backgroundImage,
  }) : super(key: key);

  final String? backgroundImage;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ScaffoldWithSideMenu(
          constraints: constraints,
          backgroundImage: 'background_color.png',
          backgroundImageBlur: 5,
          child: const Center(
            child: CircularProgressIndicator(
              color: AppColors.secondary,
            ),
          ),
        );
      },
    );
  }
}
