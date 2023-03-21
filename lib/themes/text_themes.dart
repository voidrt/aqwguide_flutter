import '../../themes/colors.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static const TextStyle boldTitle = TextStyle(
    fontSize: FontSize.exg,
    fontWeight: FontWeight.bold,
    color: AppColors.textWhite,
  );

  static const TextStyle labelTitle = TextStyle(
    fontSize: FontSize.defaultTitle + 2,
    fontWeight: FontWeight.w600,
    color: AppColors.textWhite,
  );

  static const TextStyle title = TextStyle(
    fontSize: FontSize.defaultBody,
    fontWeight: FontWeight.w500,
    color: AppColors.textWhite,
  );

  static const TextStyle text = TextStyle(
    fontSize: FontSize.defaultBody - 2,
    fontWeight: FontWeight.w300,
    color: AppColors.textWhite,
  );
}

class FontSize {
  static const double p = 8;
  static const double m = 16;
  static const double defaultBody = 18;
  static const double defaultTitle = 22;
  static const double g = 26;
  static const double gg = 36;
  static const double exg = 78;
}
