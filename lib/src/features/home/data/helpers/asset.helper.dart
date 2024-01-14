import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_test_app/gen/locator.gen.dart';
import 'package:flutter_test_app/src/constants/app.sizes.dart';
import 'package:injectable/injectable.dart';

// class TJsonService {
//   TJsonService._();

//   static Future<dynamic> loadJsonAsset(String jsonPath) async {
//     final strRes = await rootBundle.loadString(jsonPath);
//     return jsonDecode(strRes);
//   }
// }

final JsonService jsonService = sl<JsonService>();

abstract class JsonService {
  Future<dynamic> loadJsonAsset(String jsonPath);
}

@LazySingleton(as: JsonService)
class JsonServiceImpl extends JsonService {
  @override
  Future loadJsonAsset(String jsonPath) async {
    return await Future.delayed(const Duration(milliseconds: TAppSize.d3000),
        () async {
      final strRes = await rootBundle.loadString(jsonPath);
      debugPrint('Response: ${jsonDecode(strRes)}');
      return jsonDecode(strRes);
    });
  }
}
