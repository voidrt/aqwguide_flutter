import 'package:flutter/material.dart';
import 'package:travel_seila/screens/home/widgets/content_list.dart';
import 'package:travel_seila/themes/colors.dart';
import 'package:travel_seila/themes/paddings.dart';

import '../../../themes/text_widgets/aqwg_title.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
    required this.deviceSize,
  }) : super(key: key);

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceSize.width / 5, // good value, apparently
      height: deviceSize.height,
      color: AppColors.primary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const AqwgTitle(titleString: 'AQWG'),
          const Divider(
            thickness: 0.5,
            height: 1,
            indent: 15,
            endIndent: 15,
            color: AppColors.textWhite,
          ),
          const SizedBox(
            height: PaddingMeasure.g,
          ),
          ContentsList(),
        ],
      ),
    );
  }
}
