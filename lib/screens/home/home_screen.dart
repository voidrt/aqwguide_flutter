import 'package:flutter/material.dart';
import 'package:travel_seila/general_widgets/blurred_image_widget/blurred_image.dart';
import 'package:travel_seila/general_widgets/sidemenu/sidemenu.dart';

import 'package:travel_seila/screens/home/grid_view/home_gridview.dart';
import 'package:travel_seila/themes/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(builder: (context, constraints) {
        // nao pergunta o pq
        final gridViewCenterPadding = constraints.maxWidth / 7;
        //foi a unica coisa que funcionou

        return Scaffold(
          body: BlurredImageBackground(
            assetImage: 'nulgath.png',
            blurLevel: 10,
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            child: Row(
              children: [
                SideMenu(
                  selectedIndex: 0,
                ),
                const VerticalDivider(
                  width: 1,
                  thickness: 1,
                  color: AppColors.textWhite,
                ),
                Expanded(
                  child: SizedBox(
                    width: gridViewCenterPadding,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HomeGridView(
                          constraints: constraints,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
