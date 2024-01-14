import 'package:flutter/material.dart';
import 'package:flutter_test_app/src/constants/app.enums.dart';
import 'package:flutter_test_app/src/constants/app.sizes.dart';

class SlideLeftRight extends StatefulWidget {
  final Widget child;
  final SlideDirection direction;
  final Duration duration;

  const SlideLeftRight({
    Key? key,
    required this.child,
    this.direction = SlideDirection.leftToRight,
    this.duration = const Duration(milliseconds: TAppSize.d500),
  }) : super(key: key);

  @override
  State createState() => _SlideLeftRightState();
}

class _SlideLeftRightState extends State<SlideLeftRight>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    final beginOffset = widget.direction == SlideDirection.leftToRight
        ? const Offset(-1, 0)
        : const Offset(1, 0);
    const endOffset = Offset.zero;

    _animationController = AnimationController(
      vsync: this,
      duration: widget.duration,
    );

    _animation = Tween<Offset>(
      begin: beginOffset,
      end: endOffset,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOut,
      ),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: widget.child,
    );
  }
}
