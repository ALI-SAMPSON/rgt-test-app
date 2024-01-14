import 'package:flutter/material.dart';
import 'package:flutter_test_app/src/constants/app.colors.dart';
import 'package:flutter_test_app/src/utils/theme/custom.themes/appbar.theme.dart';
import 'package:flutter_test_app/src/utils/theme/custom.themes/bottom.sheet.theme.dart';
import 'package:flutter_test_app/src/utils/theme/custom.themes/checkbox.theme.dart';
import 'package:flutter_test_app/src/utils/theme/custom.themes/chip.theme.dart';
import 'package:flutter_test_app/src/utils/theme/custom.themes/elevated.button.theme.dart';
import 'package:flutter_test_app/src/utils/theme/custom.themes/outlined.button.theme.dart';
import 'package:flutter_test_app/src/utils/theme/custom.themes/slider.theme.dart';
import 'package:flutter_test_app/src/utils/theme/custom.themes/text.theme.dart';
import 'package:flutter_test_app/src/utils/theme/custom.themes/textfield.theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Inter',
    brightness: Brightness.light,
    primaryColor: TAppColor.primary,
    //colorScheme: ColorScheme.fromSeed(seedColor: TAppColor.primary),
    scaffoldBackgroundColor: TAppColor.light,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxThemeData,
    chipTheme: TChipTheme.lightChipThemeData,
    sliderTheme: TSliderTheme.lightSliderTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetThemeData,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Inter',
    brightness: Brightness.dark,
    primaryColor: TAppColor.primary,
    //colorScheme: ColorScheme.fromSeed(seedColor: TAppColor.primary),
    scaffoldBackgroundColor: TAppColor.blackColor,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    textTheme: TTextTheme.darkTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxThemeData,
    chipTheme: TChipTheme.darkChipThemeData,
    sliderTheme: TSliderTheme.darkSliderTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetThemeData,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
