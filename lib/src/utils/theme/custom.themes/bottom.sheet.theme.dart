import 'package:flutter/material.dart';
import 'package:flutter_test_app/src/constants/app.colors.dart';
import 'package:flutter_test_app/src/constants/app.sizes.dart';

class TBottomSheetTheme {
  TBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetThemeData = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: TAppColor.whiteColor,
    modalBackgroundColor: TAppColor.whiteColor,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(TAppSize.s16),
    ),
  );

  static BottomSheetThemeData darkBottomSheetThemeData = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: TAppColor.blackColor,
    modalBackgroundColor: TAppColor.blackColor,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(TAppSize.s16),
    ),
  );
}
