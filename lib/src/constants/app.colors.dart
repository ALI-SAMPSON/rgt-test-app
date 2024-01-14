import 'package:flutter/material.dart';
import 'package:flutter_test_app/src/constants/app.sizes.dart';

class TAppColor {
  TAppColor._();

  // App Basic Colors
  static const Color primary = Color(0xFF7C3AED);
  static const Color primary50 = Color(0xFFfbb296);
  static const Color secondary = Colors.greenAccent;

  static const Color seablue = Color(0xFF22D3EE);
  static const Color blue = Color(0xFF60A5FA);
  static const Color yellow = Color(0xFFFACC15);
  static const Color pink = Color(0xFFF472B6);
  static const Color roseRed = Color(0xFFFB7185);
  static const Color indigo = Color(0xFF818CF8);
  static const Color green = Color(0xFF22C55E);

  static const Color red = Color(0xFFDC2626);

  static const Color shadowColor = Color(0xFF151313);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color greyColor = Colors.grey;
  static const Color blackColor = Color(0xFF121212);
  static const Color transparentColor = Colors.transparent;
  static const Color whiteGreyish = Color(0xFFF6F6F6);

  // Background Colors
  static const Color light = Color(0xFFF8FAFC);
  static const Color dark = Color(0xFF272727);
  //static const Color dark = Color(0xFF242424);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  // Background Container Colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = TAppColor.whiteColor.withOpacity(TAppSize.s0_1);

  // Button Colors
  static const Color buttonPrimary = TAppColor.primary;
  static const Color buttonSecondary = Color(0xFF6C757D);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  // Border Colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);
  static const Color darkGrey = Color(0xFF1F1F1F);

  // Text Colors
  static const Color text50 = Color(0xFFF5F5F5);
  static const Color text100 = Color(0xFFC0BEBE);
  static const Color text300 = Color(0xFF767272);
  static const Color text500 = Color(0xFF585757);
  static const Color text700 = Color(0xFF151313);

  // Alert Colors
  static const Color alert50 = Color(0xFFFCEDF0);
  static const Color alert100 = Color(0xFFE88797);
  static const Color alert300 = Color(0xFFdc4c64);
  static const Color alert500 = Color(0xFFc8455b);
  static const Color alert700 = Color(0xFF9c3647);

  // Warning Colors
  static const Color warning50 = Color(0xFFfcf6e8);
  static const Color warning100 = Color(0xFFf3d496);
  static const Color warning300 = Color(0xFFedc066);
  static const Color warning500 = Color(0xFFe4a11b);
  static const Color warning700 = Color(0xFFa27213);

  // Success Colors
  static const Color success50 = Color(0xFFe8f6ed);
  static const Color success100 = Color(0xFF93d5ad);
  static const Color success300 = Color(0xFF62c288);
  static const Color success500 = Color(0xFF14a44d);
  static const Color success700 = Color(0xFF0e7437);

  // Info Colors
  static const Color info50 = Color(0xFFefeafc);
  static const Color info100 = Color(0xFFb49df2);
  static const Color info300 = Color(0xFF9271ec);
  static const Color info500 = Color(0xFF5c2be2);
  static const Color info700 = Color(0xFF411fa0);
}
