// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_seila/core/providers/topics_provider/topics_properties.dart';
import 'package:travel_seila/general_widgets/scroll_physics.dart/ajustable_scroll.dart';
import 'package:travel_seila/general_widgets/text_widgets/aqwg_title.dart';
import 'package:travel_seila/general_widgets/text_widgets/plain_text.dart';

import 'package:travel_seila/themes/colors.dart';

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
    final List<String> contentNames = ref.watch(contentNamesProvider);
    final List<String> contentRoutes = ref.watch(contentRoutesProvider);
    final Size mediaQuerySize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      controller: AdjustableScrollController(),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: mediaQuerySize.height,
        ),
        child: IntrinsicHeight(
          child: NavigationRail(
            backgroundColor: AppColors.primary,
            extended: true,
            elevation: 1,
            selectedIndex: widget.selectedIndex,
            groupAlignment: -1,
            indicatorColor: AppColors.secondary,
            onDestinationSelected: (int index) {
              setState(() {
                widget.selectedIndex = index;
                index == 0
                    ? context.go('/')
                    : context.goNamed(contentRoutes[index - 1]);
              });
            },
            leading: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  overlayColor: MaterialStateProperty.all(AppColors.primary),
                  onTap: () => context.goNamed('home'),
                  child: const AqwgTitle(titleString: 'AQWG'),
                ),
                const Divider(
                  thickness: 0.5,
                  height: 1,
                  indent: 15,
                  endIndent: 15,
                  color: AppColors.textWhite,
                ),
              ],
            ),
            destinations: List.generate(
              contentNames.length + 1,
              (index) {
                return index == 0
                    ? const NavigationRailDestination(
                        padding: EdgeInsets.zero,
                        icon: Icon(
                          Icons.home_rounded,
                          color: AppColors.textWhite,
                          size: 25,
                        ),
                        label: PlainText(
                          string: 'Home',
                          isInParagraph: false,
                        ),
                      )
                    : NavigationRailDestination(
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.textWhite,
                          size: 15,
                        ),
                        padding: EdgeInsets.zero,
                        label: PlainText(
                          string: contentNames[index - 1],
                          isInParagraph: false,
                        ),
                      );
              },
            ),
          ),
        ),
      ),
    );
  }
}
