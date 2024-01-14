import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_app/app.dart';
import 'package:flutter_test_app/gen/locator.gen.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  initDependencies();
  runApp(const App());
}

// initialize startup dependencies
Future<void> initDependencies() async {
  WidgetsFlutterBinding.ensureInitialized(); // init widgetFlutterBinding
  configureDependencies(environment: Environment.prod); // init service locator
  await ScreenUtil.ensureScreenSize();
}
