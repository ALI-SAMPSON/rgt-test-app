import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_app/src/constants/app.sizes.dart';

class TCircleIconWidget extends StatelessWidget {
  final Color color;
  final Widget child;
  final double radius;
  final double size;
  final double padding;
  final String? label;
  const TCircleIconWidget(
      {super.key,
      required this.color,
      required this.child,
      this.radius = TAppSize.s24,
      this.size = TAppSize.s68,
      this.padding = TAppSize.s14,
      this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: size,
          height: size,
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(radius)),
          child: child,
        ),
        label == null ? const SizedBox.shrink() : TAppSize.s8.verticalSpace,
        label == null
            ? const SizedBox.shrink()
            : Text(
                label ?? '',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontSize: TAppSize.s14),
              ),
      ],
    );
  }
}
