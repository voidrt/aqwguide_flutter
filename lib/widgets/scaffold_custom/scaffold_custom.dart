import 'package:flutter/material.dart';
import 'package:travel_seila/widgets/page_footer/page_footer.dart';
import 'package:travel_seila/widgets/sidemenu/sidemenu.dart';
import 'package:travel_seila/themes/colors.dart';

class ScaffoldWithSideMenu extends StatelessWidget {
  const ScaffoldWithSideMenu({
    Key? key,
    required this.child,
    required this.constraints,
    this.expandedFlex,
    this.pageIndex,
  }) : super(key: key);

  final Widget child;
  final BoxConstraints constraints;

  final int? expandedFlex;
  final int? pageIndex;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: ConstrainedBox(
          constraints: constraints,
          child: Row(
            children: [
              SideMenu(
                selectedIndex: pageIndex ?? 0,
              ),
              const VerticalDivider(
                width: 1,
                thickness: 1,
                color: AppColors.textWhite,
              ),
              Expanded(
                flex: expandedFlex ?? 1,
                child: SingleChildScrollView(
                  child: Column(
                    children: [child, const PageFooter()],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
