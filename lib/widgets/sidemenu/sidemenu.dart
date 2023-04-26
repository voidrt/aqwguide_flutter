// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_seila/core/providers/topics_provider/content_general_info.dart';
import 'package:travel_seila/widgets/scroll_physics.dart/ajustable_scroll.dart';
import 'package:travel_seila/widgets/sidemenu/sidemenu_title.dart';
import 'package:travel_seila/widgets/sidemenu/sidemenu_destinations_list.dart';

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
    final List<String> contentNames = ref.watch(availableContentProvider);
    final List<String> contentRoutes = ref.watch(contentRoutesProvider);

    final Size mediaQuerySize = MediaQuery.of(context).size;

    void navigateToDestination(int index) {
      setState(
        () {
          widget.selectedIndex = index;
          context.goNamed(
            contentRoutes[index],
          );
        },
      );
    }

    return SingleChildScrollView(
      controller: AdjustableScrollController(),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: mediaQuerySize.height,
          maxWidth: mediaQuerySize.width / 5,
        ),
        child: IntrinsicHeight(
          child: NavigationRail(
            extended: true,
            onDestinationSelected: navigateToDestination,
            selectedIndex: widget.selectedIndex,
            leading: const SideMenuTitle(),
            destinations: generateAllDestination(contentNames),
          ),
        ),
      ),
    );
  }
}
