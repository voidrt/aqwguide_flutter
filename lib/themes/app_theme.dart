import 'package:flutter/material.dart';
//---------------------------------------------
import 'colors.dart';
import 'text_themes.dart';

class AppTheme {
  static var appTheme = ThemeData().copyWith(
    useMaterial3: true,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.background,
    unselectedWidgetColor: Colors.white.withOpacity(0.67),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 3,
      toolbarHeight: 50,
    ),
    inputDecorationTheme: const InputDecorationTheme().copyWith(
      focusColor: AppColors.black,
      labelStyle: const TextStyle(
        fontWeight: FontWeight.w400,
        color: AppColors.black,
      ),
    ),
    textTheme: const TextTheme().copyWith(
      titleLarge: TextStyles.boldTitle,
      labelLarge: TextStyles.labelTitle,
      bodyMedium: TextStyles.title,
      bodySmall: TextStyles.text,
    ),
  );
}
