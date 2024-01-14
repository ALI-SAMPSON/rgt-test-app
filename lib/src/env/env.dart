// lib/env/env.dart
import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(obfuscate: true)
//@Envied(path: '.env.dev')
abstract class Env {
  /// App Base url for [Matchesy]
  @EnviedField(
      defaultValue: 'https://a434-102-89-41-09.ngrok-free.app/api',
      obfuscate: true)
  static final String baseUrl = _Env.baseUrl;

  ///              All endpoints for [App]
  /// ------------------------------------------------------------
  /// ============================================================
}
