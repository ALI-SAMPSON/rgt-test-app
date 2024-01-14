import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_test_app/src/constants/app.sizes.dart';

class AnimatedListView<T> extends StatelessWidget {
  final Widget Function(T item, int index) child;
  final int duration;
  final List<T> items;
  final bool shrinkWrap;
  final ScrollController? controller;
  const AnimatedListView(
      {super.key,
      required this.child,
      this.duration = TAppSize.d500,
      this.shrinkWrap = false,
      required this.items,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: ListView.builder(
        controller: controller,
        itemCount: items.length,
        shrinkWrap: shrinkWrap,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: Duration(milliseconds: duration),
            child: SlideAnimation(
              verticalOffset: TAppSize.s50,
              child: FadeInAnimation(
                child: child(items[index], index),
              ),
            ),
          );
        },
      ),
    );
  }
}
