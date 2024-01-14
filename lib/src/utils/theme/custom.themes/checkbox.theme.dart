import 'package:flutter/material.dart';
import 'package:flutter_test_app/src/constants/app.colors.dart';
import 'package:flutter_test_app/src/constants/app.sizes.dart';

/// -- Light & Dark Checkbox Themes
class TCheckboxTheme {
  TCheckboxTheme._();

  /// -- Light Theme
  static CheckboxThemeData lightCheckboxThemeData = CheckboxThemeData(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(TAppSize.s4)),
    side: BorderSide.none,
    checkColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return TAppColor.whiteColor;
      } else {
        return TAppColor.blackColor;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return TAppColor.primary;
      } else {
        return TAppColor.text50;
      }
    }),
  );

  /// -- Dark Theme
  static CheckboxThemeData darkCheckboxThemeData = CheckboxThemeData(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(TAppSize.s4)),
    side: BorderSide.none,
    checkColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return TAppColor.whiteColor;
      } else {
        return TAppColor.blackColor;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return TAppColor.primary;
      } else {
        return TAppColor.text300;
      }
    }),
  );
}
