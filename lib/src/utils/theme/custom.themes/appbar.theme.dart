import 'package:flutter/material.dart';
import 'package:flutter_test_app/src/constants/app.colors.dart';
import 'package:flutter_test_app/src/constants/app.sizes.dart';

class TAppBarTheme {
  TAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
      elevation: TAppSize.s0,
      centerTitle: false,
      scrolledUnderElevation: TAppSize.s0,
      backgroundColor: TAppColor.transparentColor,
      surfaceTintColor: TAppColor.transparentColor,
      iconTheme: IconThemeData(color: TAppColor.blackColor, size: TAppSize.s24),
      actionsIconTheme:
          IconThemeData(color: TAppColor.blackColor, size: TAppSize.s24),
      titleTextStyle: TextStyle(
          fontSize: TAppSize.s18,
          fontWeight: FontWeight.w600,
          color: TAppColor.blackColor));

  static const darkAppBarTheme = AppBarTheme(
      elevation: TAppSize.s0,
      centerTitle: false,
      scrolledUnderElevation: TAppSize.s0,
      backgroundColor: TAppColor.transparentColor,
      surfaceTintColor: TAppColor.transparentColor,
      iconTheme: IconThemeData(color: TAppColor.blackColor, size: TAppSize.s24),
      actionsIconTheme:
          IconThemeData(color: TAppColor.whiteColor, size: TAppSize.s24),
      titleTextStyle: TextStyle(
          fontSize: TAppSize.s18,
          fontWeight: FontWeight.w600,
          color: TAppColor.whiteColor));
}
