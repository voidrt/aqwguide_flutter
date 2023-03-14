import 'package:flutter/material.dart';

import 'package:travel_seila/screens/home/grid_view/home_gridview.dart';
import 'package:travel_seila/screens/widgets/scaffold_custom/scaffold_custom.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(builder: (context, constraints) {
        // nao pergunta o pq
        final gridViewCenterPadding = constraints.maxWidth / 7;
        //foi a unica coisa que funcionou
        return ScaffoldWithSideMenu(
          constraints: constraints,
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
        );
      }),
    );
  }
}
