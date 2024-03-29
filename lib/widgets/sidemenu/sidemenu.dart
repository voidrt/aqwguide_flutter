// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/core/providers/content_general_info.dart';
import 'package:travel_seila/themes/colors.dart';
import 'package:travel_seila/widgets/sidemenu/sidemenu_items_list.dart';
import 'package:travel_seila/widgets/sidemenu/sidemenu_title.dart';

class SideMenu extends ConsumerStatefulWidget {
  SideMenu({
    Key? key,
    this.selectedIndex = 0,
  }) : super(key: key);

  int selectedIndex;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SideMenuState();
}

class _SideMenuState extends ConsumerState<SideMenu> {
  @override
  Widget build(
    BuildContext context,
  ) {
    final Size mediaQuerySize = MediaQuery.of(context).size;
    final contentRoutes = ref.watch(availableContentProvider).sublist(1);

    void highlightItem(int index) {
      setState(
        () => widget.selectedIndex = index,
      );
    }

    return Container(
      color: AppColors.darkGrey1000,
      width: mediaQuerySize.width / 5,
      child: ListView.builder(
        itemCount: contentRoutes.length,
        itemBuilder: (context, index) {
          bool isSelected = widget.selectedIndex == index;
          return index == 0
              ? SideMenuTitle(
                  isSelected: isSelected,
                )
              : SideMenuItems(
                  title: contentRoutes[index - 1],
                  isSelected: isSelected,
                  onTap: highlightItem,
                );
        },
      ),
    );
  }
}
