import 'package:flutter/material.dart';
import 'package:travel_seila/screens/new_player/widgets/screen_body.dart';
import 'package:travel_seila/screens/widgets/container_blur/blurred_image.dart';
import 'package:travel_seila/screens/widgets/sidemenu/sidemenu.dart';
import 'package:travel_seila/screens/widgets/text_widgets/page_name.dart';
import 'package:travel_seila/themes/colors.dart';

class NewPlayerScreen extends StatelessWidget {
  const NewPlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return BlurredImageContainer(
            assetImage: 'fantasy 1.png',
            blurLevel: 5,
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
                  flex: 4,
                  child: Column(
                    children: [
                      const PageTitle(titleString: 'New Player'),
                      ScreenBody(
                        constraints: constraints,
                      )
                    ],
                  ),
                ),
              ],
            ));
      }),
    );
  }
}
