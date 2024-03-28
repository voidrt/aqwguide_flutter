// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/core/providers/content_general_info.dart';
import 'package:travel_seila/themes/colors.dart';
import 'package:travel_seila/widgets/sidemenu/sidemenu_destinations_list.dart';
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

    void navigateToDestination(int index) {
      setState(
        () {
          widget.selectedIndex = index;
        },
      );
    }

    return Container(
      color: AppColors.darkGrey1000,
      width: mediaQuerySize.width / 5,
      child: Column(
        children: [
          const SideMenuTitle(),
          Expanded(
            child: ListView.builder(
              itemCount: contentRoutes.length,
              itemBuilder: (context, index) {
                return SideMenuDestinations(title: contentRoutes[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
