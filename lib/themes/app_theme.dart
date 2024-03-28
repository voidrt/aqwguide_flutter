import 'package:flutter/material.dart';
import 'package:travel_seila/themes/paddings.dart';
//---------------------------------------------
import 'colors.dart';
import 'text_themes.dart';

class AppTheme {
  static var appTheme = ThemeData(
    fontFamily: 'Ubuntu',
    useMaterial3: true,
    platform: TargetPlatform.windows,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.background,
    unselectedWidgetColor: Colors.white.withOpacity(0.67),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 3,
      toolbarHeight: 50,
    ),
    listTileTheme: const ListTileThemeData().copyWith(
      contentPadding: const EdgeInsets.symmetric(
        vertical: Paddings.extraSmall,
      ),
      enableFeedback: false,
      horizontalTitleGap: Paddings.extraSmall - 20,
    ),
    iconTheme: const IconThemeData().copyWith(
      color: AppColors.textWhite,
    ),
    dividerColor: Colors.transparent,
    inputDecorationTheme: const InputDecorationTheme().copyWith(
      focusColor: AppColors.black,
      labelStyle: const TextStyle(
        fontWeight: FontWeight.w400,
        color: AppColors.black,
      ),
    ),
    expansionTileTheme: const ExpansionTileThemeData(
      collapsedIconColor: AppColors.textWhite,
      iconColor: AppColors.textWhite,
      expandedAlignment: Alignment.centerLeft,
      tilePadding: EdgeInsets.zero,
      backgroundColor: AppColors.background,
      collapsedBackgroundColor: AppColors.background,
    ),
    navigationRailTheme: const NavigationRailThemeData(
      backgroundColor: AppColors.primary,
      elevation: 1,
      groupAlignment: -1,
      indicatorColor: AppColors.secondary,
    ),
    textTheme: const TextTheme().copyWith(
      titleLarge: TextStyles.pageTitle,
      labelLarge: TextStyles.labelTitle,
      bodyMedium: TextStyles.title,
      bodySmall: TextStyles.text,
    ),
    dividerTheme: const DividerThemeData(
      thickness: 0.5,
      color: AppColors.textWhite,
    ),
  );
}
