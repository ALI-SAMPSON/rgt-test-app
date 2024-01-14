import 'package:flutter/material.dart';
import 'package:flutter_test_app/src/constants/app.colors.dart';
import 'package:flutter_test_app/src/constants/app.sizes.dart';

class TTextTheme {
  TTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    // HeadLine Textstyles
    headlineLarge: const TextStyle().copyWith(
        fontSize: TAppSize.s32,
        fontWeight: FontWeight.bold,
        color: TAppColor.text700),
    headlineMedium: const TextStyle().copyWith(
        fontSize: TAppSize.s24,
        fontWeight: FontWeight.w600,
        color: TAppColor.text700),
    headlineSmall: const TextStyle().copyWith(
        fontSize: TAppSize.s18,
        fontWeight: FontWeight.w600,
        color: TAppColor.text500),

    // Title Textstyles
    titleLarge: const TextStyle().copyWith(
        fontSize: TAppSize.s16,
        fontWeight: FontWeight.w600,
        color: TAppColor.text700),
    titleMedium: const TextStyle().copyWith(
        fontSize: TAppSize.s16,
        fontWeight: FontWeight.w500,
        color: TAppColor.text700),
    titleSmall: const TextStyle().copyWith(
      fontSize: TAppSize.s16,
      fontWeight: FontWeight.w400,
      color: TAppColor.text500,
    ),

    // Body Textstyles
    bodyLarge: const TextStyle().copyWith(
        fontSize: TAppSize.s16,
        fontWeight: FontWeight.w400,
        color: TAppColor.text700),
    bodyMedium: const TextStyle().copyWith(
        fontSize: TAppSize.s14,
        fontWeight: FontWeight.normal,
        color: TAppColor.text500),
    bodySmall: const TextStyle().copyWith(
        fontSize: TAppSize.s14,
        fontWeight: FontWeight.w400,
        color: TAppColor.text300),

    // Label Textstyles
    labelLarge: const TextStyle().copyWith(
        fontSize: TAppSize.s12,
        fontWeight: FontWeight.normal,
        color: TAppColor.text500),
    labelMedium: const TextStyle().copyWith(
      fontSize: TAppSize.s12,
      fontWeight: FontWeight.normal,
      color: TAppColor.text300,
    ),
    //labelSmall: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.black.withOpacity(0.5)),
  );
  static TextTheme darkTextTheme = TextTheme(
    // HeadLine Textstyles
    headlineLarge: const TextStyle().copyWith(
        fontSize: TAppSize.s32,
        fontWeight: FontWeight.bold,
        color: TAppColor.text50),
    headlineMedium: const TextStyle().copyWith(
        fontSize: TAppSize.s24,
        fontWeight: FontWeight.w600,
        color: TAppColor.text50),
    headlineSmall: const TextStyle().copyWith(
        fontSize: TAppSize.s18,
        fontWeight: FontWeight.w600,
        color: TAppColor.text50),

    // Title Textstyles
    titleLarge: const TextStyle().copyWith(
        fontSize: TAppSize.s16,
        fontWeight: FontWeight.w600,
        color: TAppColor.text50),
    titleMedium: const TextStyle().copyWith(
        fontSize: TAppSize.s16,
        fontWeight: FontWeight.w700,
        color: TAppColor.text50),
    titleSmall: const TextStyle().copyWith(
        fontSize: TAppSize.s16,
        fontWeight: FontWeight.w400,
        color: TAppColor.text50),

    // Body Textstyles
    bodyLarge: const TextStyle().copyWith(
        fontSize: TAppSize.s16,
        fontWeight: FontWeight.w500,
        color: TAppColor.text50),
    bodyMedium: const TextStyle().copyWith(
        fontSize: TAppSize.s14,
        fontWeight: FontWeight.normal,
        color: TAppColor.text50),
    bodySmall: const TextStyle().copyWith(
      fontSize: TAppSize.s14,
      fontWeight: FontWeight.w500,
      color: TAppColor.text50,
    ),

    // Label Textstyles
    labelLarge: const TextStyle().copyWith(
        fontSize: TAppSize.s12,
        fontWeight: FontWeight.normal,
        color: TAppColor.text100),
    labelMedium: const TextStyle().copyWith(
      fontSize: TAppSize.s12,
      fontWeight: FontWeight.normal,
      color: TAppColor.text50,
    ),
    //labelSmall: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.white.withOpacity(0.5)),
  );
}
