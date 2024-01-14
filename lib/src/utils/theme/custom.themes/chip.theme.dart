import 'package:flutter/material.dart';
import 'package:flutter_test_app/src/constants/app.colors.dart';
import 'package:flutter_test_app/src/constants/app.sizes.dart';

/// -- Light & Dark Chip Themes
class TChipTheme {
  TChipTheme._();

  /// -- Light Theme
  static ChipThemeData lightChipThemeData = ChipThemeData(
    disabledColor: TAppColor.greyColor.withOpacity(TAppSize.s0_4),
    labelStyle: const TextStyle(color: TAppColor.blackColor),
    selectedColor: TAppColor.primary,
    padding: const EdgeInsets.symmetric(
        horizontal: TAppSize.s12, vertical: TAppSize.s12),
    checkmarkColor: TAppColor.whiteColor,
  );

  /// -- Dark Theme
  static ChipThemeData darkChipThemeData = const ChipThemeData(
    disabledColor: TAppColor.greyColor,
    labelStyle: TextStyle(color: TAppColor.whiteColor),
    selectedColor: TAppColor.primary,
    padding:
        EdgeInsets.symmetric(horizontal: TAppSize.s12, vertical: TAppSize.s12),
    checkmarkColor: TAppColor.whiteColor,
  );
}
