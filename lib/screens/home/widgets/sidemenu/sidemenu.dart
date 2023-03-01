import 'package:flutter/material.dart';
import 'package:travel_seila/screens/home/widgets/sidemenu/content_list.dart';
import 'package:travel_seila/themes/colors.dart';
import 'package:travel_seila/themes/paddings.dart';
import 'package:travel_seila/themes/text_widgets/aqwg_title.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  final BoxConstraints constraints;

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.constraints.maxWidth / 5, // good value, apparently
      height: widget.constraints.maxHeight,
      color: AppColors.primary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          AqwgTitle(titleString: 'AQWG'),
          Divider(
            thickness: 0.5,
            height: 1,
            indent: 15,
            endIndent: 15,
            color: AppColors.textWhite,
          ),
          SizedBox(
            height: PaddingMeasure.g,
          ),
          ContentsList(),
        ],
      ),
    );
  }
}
