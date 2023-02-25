import '../../themes/colors.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static const TextStyle boldTitle = TextStyle(
    fontSize: FontSize.gg,
    fontWeight: FontWeight.bold,
    color: AppColors.textWhite,
  );

  static const TextStyle labelTitle = TextStyle(
    fontSize: FontSize.defaultTitle,
    fontWeight: FontWeight.w600,
    color: AppColors.textWhite,
  );

  static const TextStyle title = TextStyle(
    fontSize: FontSize.defaultBody,
    fontWeight: FontWeight.w400,
    color: AppColors.textWhite,
  );

  static const TextStyle text = TextStyle(
    fontSize: FontSize.defaultBody,
    fontWeight: FontWeight.w300,
    color: AppColors.textWhite,
  );
}

class FontSize {
  static const double p = 12;
  static const double m = 14;
  static const double defaultBody = 18;
  static const double defaultTitle = 22;
  static const double g = 28;
  static const double gg = 36;
  static const double exg = 48;
}
