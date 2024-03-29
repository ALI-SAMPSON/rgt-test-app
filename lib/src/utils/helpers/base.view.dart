import 'package:flutter/material.dart';
import 'package:flutter_test_app/gen/locator.gen.dart';
import 'package:provider/provider.dart';

class BaseView<T extends ChangeNotifier> extends StatefulWidget {
  final Widget Function(BuildContext context, T model, Widget? child) builder;

  /// Call back to trigger once view is built
  final Function(T)? onModelReady;
  final Function(T)? onModelDispose;

  // ignore: sort_constructors_first, use_key_in_widget_constructors
  const BaseView({
    required this.builder,
    this.onModelReady,
    this.onModelDispose,
  });

  @override
  BaseViewState<T> createState() => BaseViewState<T>();
}

class BaseViewState<T extends ChangeNotifier> extends State<BaseView<T>> {
  T model = sl<T>();

  @override
  void initState() {
    if (widget.onModelReady != null) {
      // ignore: prefer_null_aware_method_calls
      widget.onModelReady!(model);
    }
    super.initState();
  }

  @override
  void dispose() {
    if (widget.onModelDispose != null) {
      // ignore: prefer_null_aware_method_calls
      widget.onModelDispose!(model);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>.value(
      value: model,
      child: Consumer<T>(
        builder: widget.builder,
      ),
    );
  }
}
