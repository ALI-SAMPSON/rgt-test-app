import 'package:flutter_test_app/gen/locator.gen.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final sl = GetIt.instance;

@InjectableInit(
    initializerName: 'init', preferRelativeImports: true, asExtension: true)
@injectableInit
Future<void> configureDependencies({String? environment}) async =>
    sl.init(environment: environment ?? Environment.dev);
