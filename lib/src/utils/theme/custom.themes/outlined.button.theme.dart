import 'package:flutter/material.dart';
import 'package:flutter_test_app/src/constants/app.colors.dart';
import 'package:flutter_test_app/src/constants/app.sizes.dart';

/// -- Light & Dark Outlined Button Themes
class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();

  /// -- Light Theme
  static final OutlinedButtonThemeData lightOutlinedButtonTheme =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: TAppSize.s0,
      foregroundColor: TAppColor.blackColor,
      side: const BorderSide(color: TAppColor.primary),
      padding: const EdgeInsets.symmetric(
          vertical: TAppSize.s16, horizontal: TAppSize.s20),
      textStyle: const TextStyle(
          fontSize: TAppSize.s16,
          color: TAppColor.blackColor,
          fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(TAppSize.s8)),
    ),
  );

  /// -- Dark Theme
  static final OutlinedButtonThemeData darkOutlinedButtonTheme =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: TAppSize.s0,
      foregroundColor: TAppColor.whiteColor,
      side: const BorderSide(color: TAppColor.primary),
      padding: const EdgeInsets.symmetric(
          vertical: TAppSize.s16, horizontal: TAppSize.s20),
      textStyle: const TextStyle(
          fontSize: TAppSize.s16,
          color: TAppColor.whiteColor,
          fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(TAppSize.s8)),
    ),
  );
}
