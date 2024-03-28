import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:random_image_selector/random_image_selector.dart';
import 'package:travel_seila/widgets/blurred_image_widget/blurred_image.dart';
import 'package:travel_seila/widgets/sidemenu/sidemenu.dart';
import 'package:travel_seila/screens/home/grid_view/home_gridview.dart';
import 'package:travel_seila/themes/colors.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return FutureBuilder<String>(
            future: getRandomImage('./assets/homescreen_images/'),
            builder: (context, snapshot) {
              if (!snapshot.hasData) return Container();

              print(MediaQuery.sizeOf(context).height);
              print(MediaQuery.sizeOf(context).width);

              final gridViewCenterPadding = constraints.maxWidth / 7;
              //? nao pergunta o pq, foi a unica coisa que funcionou
              final backgroundImage = snapshot.data;

              return Scaffold(
                body: BlurredImageBackground(
                  assetImage: backgroundImage ?? 'Nulgath.png',
                  blurLevel: 7,
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
                        color: AppColors.darkGrey500,
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
            },
          );
        },
      ),
    );
  }
}
