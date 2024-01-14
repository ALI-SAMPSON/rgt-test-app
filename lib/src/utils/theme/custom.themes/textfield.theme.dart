import 'package:flutter/material.dart';
import 'package:flutter_test_app/src/constants/app.colors.dart';
import 'package:flutter_test_app/src/constants/app.sizes.dart';

/// -- Light & Dark Outlined Button Themes
class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  /// -- Light Theme
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: TAppColor.greyColor,
    suffixIconColor: TAppColor.greyColor,
    focusColor: TAppColor.primary,
    contentPadding: const EdgeInsets.symmetric(vertical: TAppSize.s17),
    labelStyle: const TextStyle()
        .copyWith(fontSize: TAppSize.s16, color: TAppColor.text300),
    hintStyle: const TextStyle().copyWith(
        fontSize: TAppSize.s16,
        fontWeight: FontWeight.w400,
        color: TAppColor.text300),
    errorStyle: const TextStyle()
        .copyWith(fontStyle: FontStyle.normal, color: TAppColor.alert500),
    floatingLabelStyle: const TextStyle()
        .copyWith(color: TAppColor.blackColor.withOpacity(TAppSize.s0_8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TAppSize.s8),
      borderSide:
          const BorderSide(width: TAppSize.s1, color: TAppColor.text300),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TAppSize.s8),
      borderSide:
          const BorderSide(width: TAppSize.s1, color: TAppColor.text300),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TAppSize.s8),
      borderSide:
          const BorderSide(width: TAppSize.s1, color: TAppColor.primary),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TAppSize.s8),
      borderSide:
          const BorderSide(width: TAppSize.s1, color: TAppColor.alert500),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TAppSize.s8),
      borderSide:
          const BorderSide(width: TAppSize.s2, color: TAppColor.warning500),
    ),
  );

  /// -- Dark Theme
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: TAppColor.greyColor,
    suffixIconColor: TAppColor.greyColor,
    focusColor: TAppColor.primary,
    contentPadding: const EdgeInsets.symmetric(vertical: TAppSize.s17),
    labelStyle: const TextStyle()
        .copyWith(fontSize: TAppSize.s16, color: TAppColor.text300),
    hintStyle: const TextStyle().copyWith(
        fontSize: TAppSize.s16,
        fontWeight: FontWeight.w400,
        color: TAppColor.text300),
    errorStyle: const TextStyle()
        .copyWith(fontStyle: FontStyle.normal, color: TAppColor.alert500),
    floatingLabelStyle: const TextStyle().copyWith(color: TAppColor.text300),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TAppSize.s8),
      borderSide:
          const BorderSide(width: TAppSize.s1, color: TAppColor.text300),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TAppSize.s8),
      borderSide:
          const BorderSide(width: TAppSize.s1, color: TAppColor.text300),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TAppSize.s8),
      borderSide:
          const BorderSide(width: TAppSize.s1, color: TAppColor.primary),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TAppSize.s8),
      borderSide:
          const BorderSide(width: TAppSize.s1, color: TAppColor.alert500),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TAppSize.s8),
      borderSide:
          const BorderSide(width: TAppSize.s2, color: TAppColor.warning500),
    ),
  );
}
