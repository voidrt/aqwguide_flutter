import 'package:flutter/material.dart';
import 'package:travel_seila/screens/home/widgets/container_blur/blurred_image.dart';
import 'package:travel_seila/screens/home/widgets/sidemenu/sidemenu.dart';
import 'package:travel_seila/screens/home/widgets/text_widgets/page_title.dart';
import 'package:travel_seila/screens/new_player/widgets/screen_body.dart';
import 'package:travel_seila/themes/colors.dart';

class NewPlayerScreen extends StatelessWidget {
  const NewPlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlurredImageContainer(
        assetImage: 'Screenshot_224.png',
        blurLevel: 10,
        child: LayoutBuilder(builder: (context, constraints) {
          return BlurredImageContainer(
            assetImage: 'Screenshot_224.png',
            blurLevel: 10,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SideMenu(constraints: constraints),
                const VerticalDivider(
                  width: 1,
                  thickness: 1,
                  color: AppColors.textWhite,
                ),
                SizedBox(
                  width: constraints.maxWidth - 1 - (constraints.maxWidth / 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const PageTitle(titleString: 'New Player'),
                      ScreenBody(
                        constraints: constraints,
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
