import 'package:flutter/material.dart';
import 'package:flutter_test_app/gen/assets.gen.dart';
import 'package:flutter_test_app/src/constants/app.colors.dart';
import 'package:flutter_test_app/src/constants/app.sizes.dart';

class TSliderTheme {
  TSliderTheme._();

  static SliderThemeData lightSliderTheme = SliderThemeData(
    trackHeight: TAppSize.s1,
    trackShape: const RoundedRectSliderTrackShape(),
    activeTrackColor: TAppColor.roseRed,
    inactiveTrackColor: TAppColor.green,
    secondaryActiveTrackColor: TAppColor.green,
    thumbShape: const RoundSliderThumbShape(
      enabledThumbRadius: TAppSize.s8,
      pressedElevation: TAppSize.s8,
    ),
    thumbColor: TAppColor.whiteColor,

    overlayColor: TAppColor.text500.withOpacity(TAppSize.s0_2),
    //overlayShape: const RoundSliderOverlayShape(overlayRadius: TAppSize.s32),
    overlayShape: SliderComponentShape.noOverlay,
    tickMarkShape: const RoundSliderTickMarkShape(),

    activeTickMarkColor: TAppColor.whiteColor,
    inactiveTickMarkColor: TAppColor.text100,
    showValueIndicator: ShowValueIndicator.always,
    valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
    valueIndicatorColor: TAppColor.whiteGreyish,

    valueIndicatorTextStyle: TextStyle(
      color: TAppColor.blackColor,
      fontFamily: Assets.fonts.interLight,
      fontSize: TAppSize.s16,
    ),
  );

  static SliderThemeData darkSliderTheme = SliderThemeData(
    trackHeight: TAppSize.s1,
    trackShape: const RoundedRectSliderTrackShape(),
    activeTrackColor: TAppColor.roseRed,
    inactiveTrackColor: TAppColor.green,
    secondaryActiveTrackColor: TAppColor.green,
    thumbShape: const RoundSliderThumbShape(
      enabledThumbRadius: TAppSize.s8,
      pressedElevation: TAppSize.s8,
    ),
    thumbColor: TAppColor.text500,
    overlayColor: TAppColor.text500.withOpacity(TAppSize.s0_2),
    overlayShape: SliderComponentShape.noOverlay,
    tickMarkShape: const RoundSliderTickMarkShape(),
    activeTickMarkColor: TAppColor.whiteColor,
    inactiveTickMarkColor: TAppColor.text100,
    showValueIndicator: ShowValueIndicator.always,
    valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
    valueIndicatorColor: TAppColor.whiteColor,
    valueIndicatorTextStyle: const TextStyle(
      color: TAppColor.blackColor,
      fontSize: TAppSize.s16,
    ),
  );
}
