import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/screens/new_player/cards/classes.dart';
import 'package:travel_seila/screens/new_player/cards/information.dart';
import 'package:travel_seila/themes/paddings.dart';
import 'package:travel_seila/widgets/scaffold_custom/scaffold_custom.dart';
import 'package:travel_seila/widgets/text_widgets/page_title.dart';

class NewPlayerScreen extends ConsumerWidget {
  const NewPlayerScreen({Key? key}) : super(key: key);

  final String newPlayerBackgroundImage = 'Dragonslayer.png';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ScaffoldWithSideMenu(
          constraints: constraints,
          pageIndex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              PageTitle(
                pageTitle: 'New Player',
                backgroundImage: newPlayerBackgroundImage,
                backgroundImageBlur: 10,
                constraints: constraints,
              ),
              const Information(),
              const Classes(),
              const SizedBox(
                height: PaddingMeasure.xxl * 2,
              ),
            ],
          ),
        );
      },
    );
  }
}
