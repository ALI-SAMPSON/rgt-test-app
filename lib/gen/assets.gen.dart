/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Inter-Black.ttf
  String get interBlack => 'assets/fonts/Inter-Black.ttf';

  /// File path: assets/fonts/Inter-Bold.ttf
  String get interBold => 'assets/fonts/Inter-Bold.ttf';

  /// File path: assets/fonts/Inter-ExtraBold.ttf
  String get interExtraBold => 'assets/fonts/Inter-ExtraBold.ttf';

  /// File path: assets/fonts/Inter-Light.ttf
  String get interLight => 'assets/fonts/Inter-Light.ttf';

  /// File path: assets/fonts/Inter-Medium.ttf
  String get interMedium => 'assets/fonts/Inter-Medium.ttf';

  /// File path: assets/fonts/Inter-Regular.ttf
  String get interRegular => 'assets/fonts/Inter-Regular.ttf';

  /// File path: assets/fonts/Inter-SemiBold.ttf
  String get interSemiBold => 'assets/fonts/Inter-SemiBold.ttf';

  /// List of all assets
  List<String> get values => [
        interBlack,
        interBold,
        interExtraBold,
        interLight,
        interMedium,
        interRegular,
        interSemiBold
      ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/dashboard.svg
  SvgGenImage get dashboard => const SvgGenImage('assets/icons/dashboard.svg');

  /// File path: assets/icons/lab.icon.svg
  SvgGenImage get labIcon => const SvgGenImage('assets/icons/lab.icon.svg');

  /// File path: assets/icons/medication.icon.svg
  SvgGenImage get medicationIcon =>
      const SvgGenImage('assets/icons/medication.icon.svg');

  /// File path: assets/icons/moon.icon.svg
  SvgGenImage get moonIcon => const SvgGenImage('assets/icons/moon.icon.svg');

  /// File path: assets/icons/notification.icon.svg
  SvgGenImage get notificationIcon =>
      const SvgGenImage('assets/icons/notification.icon.svg');

  /// File path: assets/icons/scan.icon.svg
  SvgGenImage get scanIcon => const SvgGenImage('assets/icons/scan.icon.svg');

  /// File path: assets/icons/sun.icon.svg
  SvgGenImage get sunIcon => const SvgGenImage('assets/icons/sun.icon.svg');

  /// File path: assets/icons/sunrise.icon.svg
  SvgGenImage get sunriseIcon =>
      const SvgGenImage('assets/icons/sunrise.icon.svg');

  /// File path: assets/icons/surgeries.icon.svg
  SvgGenImage get surgeriesIcon =>
      const SvgGenImage('assets/icons/surgeries.icon.svg');

  /// File path: assets/icons/vaccination.icon.svg
  SvgGenImage get vaccinationIcon =>
      const SvgGenImage('assets/icons/vaccination.icon.svg');

  /// File path: assets/icons/visit.icon.svg
  SvgGenImage get visitIcon => const SvgGenImage('assets/icons/visit.icon.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        dashboard,
        labIcon,
        medicationIcon,
        moonIcon,
        notificationIcon,
        scanIcon,
        sunIcon,
        sunriseIcon,
        surgeriesIcon,
        vaccinationIcon,
        visitIcon
      ];
}

class $AssetsJsonGen {
  const $AssetsJsonGen();

  /// File path: assets/json/current.appointment.json
  String get currentAppointment => 'assets/json/current.appointment.json';

  /// File path: assets/json/medical.test.json
  String get medicalTest => 'assets/json/medical.test.json';

  /// File path: assets/json/medication.json
  String get medication => 'assets/json/medication.json';

  /// File path: assets/json/upcoming.appointment.json
  String get upcomingAppointment => 'assets/json/upcoming.appointment.json';

  /// List of all assets
  List<String> get values =>
      [currentAppointment, medicalTest, medication, upcomingAppointment];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsJsonGen json = $AssetsJsonGen();
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
