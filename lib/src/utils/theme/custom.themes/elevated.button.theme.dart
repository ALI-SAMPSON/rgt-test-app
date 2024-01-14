import 'package:flutter/material.dart';
import 'package:flutter_test_app/src/constants/app.colors.dart';
import 'package:flutter_test_app/src/constants/app.sizes.dart';

/// -- Light & Dark Elevated Button Themes
class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  /// -- Light Theme
  static final ElevatedButtonThemeData lightElevatedButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: TAppSize.s0,
      foregroundColor: TAppColor.whiteColor,
      backgroundColor: TAppColor.primary,
      disabledForegroundColor: TAppColor.greyColor,
      disabledBackgroundColor: TAppColor.greyColor,
      side: const BorderSide(color: TAppColor.primary),
      minimumSize: const Size.fromHeight(TAppSize.buttonHeight),
      // padding: const EdgeInsets.symmetric(
      //     vertical: TAppSize.s18, horizontal: TAppSize.s20),
      textStyle: const TextStyle(
          fontSize: TAppSize.s16,
          color: TAppColor.whiteColor,
          fontWeight: FontWeight.w400),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(TAppSize.s5)),
    ),
  );

  /// -- Dark Theme
  static final ElevatedButtonThemeData darkElevatedButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: TAppSize.s0,
      foregroundColor: TAppColor.whiteColor,
      backgroundColor: TAppColor.primary,
      disabledForegroundColor: TAppColor.greyColor,
      disabledBackgroundColor: TAppColor.greyColor,
      side: const BorderSide(color: TAppColor.primary),
      minimumSize: const Size.fromHeight(TAppSize.buttonHeight),
      padding: const EdgeInsets.symmetric(
          vertical: TAppSize.s18, horizontal: TAppSize.s20),
      textStyle: const TextStyle(
          fontSize: TAppSize.s16,
          color: TAppColor.whiteColor,
          fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(TAppSize.s5),
      ),
    ),
  );
}
