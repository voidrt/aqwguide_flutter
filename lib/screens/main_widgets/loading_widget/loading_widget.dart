import 'package:flutter/material.dart';
import 'package:travel_seila/screens/main_widgets/scaffold_custom/scaffold_custom.dart';
import 'package:travel_seila/themes/colors.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ScaffoldWithSideMenu(
          constraints: constraints,
          backgroundImage: 'dage.png',
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
