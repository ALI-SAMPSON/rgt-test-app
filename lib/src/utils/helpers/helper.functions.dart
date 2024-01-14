import 'package:flutter/material.dart';

class THelperFunction {
  THelperFunction._();

  ///Navigate to page
  ///[replace] determines whether to remove page from stack or to push
  ///[destination] is the route
  ///[args] Passes data to page
  static Future<dynamic>? switchScreen({
    required BuildContext context,
    required String destination,
    bool replace = false,
    bool popAndPush = false,
    dynamic args,
  }) {
    return replace
        ? Navigator.of(context)
            .pushReplacementNamed(destination, arguments: args)
        // Get.offAllNamed(destination, arguments: args)
        : popAndPush
            ? Navigator.of(context)
                .popAndPushNamed(destination, arguments: args)
            //Get.offAndToNamed(destination, arguments: args)
            : Navigator.of(context).pushNamed(destination, arguments: args);
  }

  /// --- Go back
  static void pop<T>({
    required BuildContext context,
    T? result,
  }) {
    if (Navigator.of(context).canPop()) {
      Navigator.of(context).pop(result);
    }
  }

  // check if device is in dark mode
  static bool isDarkMode(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark;

// check if device is in light mode
  static isLightMode(BuildContext context) =>
      Theme.of(context).brightness == Brightness.light;

  static List<T> removeDuplicates<T>(List<T> list) => list.toSet().toList();
}
