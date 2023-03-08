import 'package:flutter/material.dart';
import 'package:travel_seila/screens/home/widgets/container_blur/blurred_image.dart';
import 'package:travel_seila/screens/home/widgets/grid_view/home_gridview.dart';
import 'package:travel_seila/screens/home/widgets/sidemenu/sidemenu.dart';
import 'package:travel_seila/themes/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: BlurredImageContainer(
        assetImage: 'nulgath.png',
        blurLevel: 10,
        child: LayoutBuilder(
          builder: ((context, constraints) {
            return Row(
              children: [
                SideMenu(),
                const VerticalDivider(
                  width: 1,
                  thickness: 1,
                  color: AppColors.textWhite,
                ),
                SizedBox(
                  // don't ask me why.
                  // it's the only thing that worked
                  width: constraints.maxWidth / 7,
                ),
                HomeGridView(
                  constraints: constraints,
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
