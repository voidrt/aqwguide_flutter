import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/core/repository/topics_properties.dart';
import 'package:travel_seila/screens/home/widgets/scroll_physics.dart/ajustable_scroll.dart';
import 'package:travel_seila/screens/home/widgets/text_widgets/aqwg_title.dart';
import 'package:travel_seila/screens/home/widgets/text_widgets/plain_text.dart';
import 'package:travel_seila/themes/colors.dart';

class SideMenu extends ConsumerStatefulWidget {
  const SideMenu({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  final BoxConstraints constraints;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SideMenuState();
}

class _SideMenuState extends ConsumerState<SideMenu> {
  int _selectedIndex = 0;

  @override
  Widget build(
    BuildContext context,
  ) {
    final List<String> contentNames = ref.watch(contentNamesProvider);

    return SingleChildScrollView(
      controller: AdjustableScrollController(),
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: widget.constraints.maxHeight),
        child: IntrinsicHeight(
          child: NavigationRail(
            backgroundColor: AppColors.primary,
            extended: true,
            elevation: 1,
            selectedIndex: _selectedIndex,
            groupAlignment: -1,
            indicatorColor: AppColors.secondary,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            leading: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                AqwgTitle(titleString: 'AQWG'),
                Divider(
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
                        icon: Icon(
                          Icons.home_rounded,
                          color: AppColors.textWhite,
                          size: 20,
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
