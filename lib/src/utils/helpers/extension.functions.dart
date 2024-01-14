import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test_app/src/constants/app.colors.dart';
import 'package:flutter_test_app/src/constants/app.sizes.dart';

/// extensions on any [Widget]
extension AppWidgetExtension on Widget {
  Widget horizontal(double spacing) => Padding(
        padding: EdgeInsets.symmetric(horizontal: spacing),
        child: this,
      );

  Widget vertical(double spacing) => Padding(
        padding: EdgeInsets.symmetric(vertical: spacing),
        child: this,
      );

  Widget bottom(double spacing) => Padding(
        padding: EdgeInsets.only(bottom: spacing),
        child: this,
      );

  Widget top(double spacing) => Padding(
        padding: EdgeInsets.only(top: spacing),
        child: this,
      );

  Widget left(double spacing) => Padding(
        padding: EdgeInsets.only(left: spacing),
        child: this,
      );

  Widget right(double spacing) => Padding(
        padding: EdgeInsets.only(right: spacing),
        child: this,
      );

  Widget all(double spacing) => Padding(
        padding: EdgeInsets.all(spacing),
        child: this,
      );

  // Decoration boxDecoration({Color? color, bool showBorder = false}) =>
  //     BoxDecoration(
  //       color: color,
  //       border: Border.all(
  //           width: showBorder ? TAppSize.s1 : TAppSize.s0,
  //           color: showBorder ? TAppColor.text300 : TAppColor.transparentColor),
  //       borderRadius: BorderRadius.circular(TAppSize.s8),
  //     );

  Widget symmetric({
    double vertical = 0.0,
    double horizontal = 0.0,
  }) =>
      Padding(
        padding: EdgeInsets.symmetric(
          vertical: vertical,
          horizontal: horizontal,
        ),
        child: this,
      );
  Widget only(
          {double top = 0.0,
          double bottom = 0.0,
          double left = 0.0,
          double right = 0.0}) =>
      Padding(
        padding: EdgeInsets.only(
          top: top,
          bottom: bottom,
          left: left,
          right: right,
        ),
        child: this,
      );

  Widget onPressed({
    required Function()? onTap,
    BorderRadius? radius,
    Color? overlayColor,
    Color? color,
    InteractiveInkFeatureFactory? splashFactory,
  }) =>
      InkWell(
        onTap: onTap,
        borderRadius: radius,
        splashFactory: splashFactory ?? InkSplash.splashFactory,
        splashColor: color,
        overlayColor:
            MaterialStatePropertyAll(overlayColor ?? Colors.transparent),
        child: this,
      );

  Widget hero({required String tag}) => Hero(
        tag: tag,
        child: Material(
          color: TAppColor.transparentColor,
          child: this,
        ),
      );
  Widget align(Alignment alignment) => Align(alignment: alignment, child: this);
  Widget centered() => Center(child: this);
  Widget scrollable({ScrollController? controller}) => SingleChildScrollView(
      controller: controller,
      physics: const BouncingScrollPhysics(),
      child: this);
}

extension SvgExtension on String {
  Widget svg(
      {double? width,
      double? height,
      Color? color,
      BoxFit fit = BoxFit.contain}) {
    return SvgPicture.asset(
      this,
      width: width,
      height: height,
      fit: fit,
      color: color,
    );
  }
}

extension ContainerWidget on Container {}

Decoration boxDecoration({Color? color, bool showBorder = false}) =>
    BoxDecoration(
      color: color,
      border: Border.all(
          width: showBorder ? TAppSize.s0_5 : TAppSize.s0,
          color: showBorder ? TAppColor.text300 : TAppColor.transparentColor),
      borderRadius: BorderRadius.circular(TAppSize.s8),
    );
