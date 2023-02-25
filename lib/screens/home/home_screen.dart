import 'package:flutter/material.dart';
import 'package:travel_seila/screens/home/widgets/home_gridview.dart';
import 'package:travel_seila/screens/home/widgets/sidemenu.dart';
import 'package:travel_seila/themes/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: LayoutBuilder(
        builder: ((context, constraints) {
          return Row(
            children: [
              SideMenu(
                deviceSize: mediaQuery.size,
              ),
              const VerticalDivider(
                width: 1,
                thickness: 1,
                color: AppColors.textWhite,
              ),
              const HomeGridView(),
            ],
          );
        }),
      ),
    );
  }
}
