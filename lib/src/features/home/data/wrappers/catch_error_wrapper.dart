import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_app/gen/locator.gen.dart';
import 'package:flutter_test_app/src/features/home/data/errors/exceptions.dart';
import 'package:flutter_test_app/src/features/home/data/errors/failure.dart';
import 'package:injectable/injectable.dart';

final CatchApiErrorWrapper catchApiErrorWrapper = sl<CatchApiErrorWrapper>();

abstract class CatchApiErrorWrapper {
  dynamic handleError({dynamic err, dynamic stackTrace});
}

@LazySingleton(as: CatchApiErrorWrapper)
class CatchApiErrorWrapperImpl extends CatchApiErrorWrapper {
  @override
  dynamic handleError({err, stackTrace}) {
    debugPrint('Error: ${err.toString()}');
    String? errorMessage = '';
    // if (err.runtimeType != NoInternetException) {
    //   unawaited(FirebaseCrashlytics.instance.recordError(err, stackTrace));
    // }
    if (err is DioException) {
      debugPrint('DioException caught-----------');
      if (err.response != null) {
        if (err.response!.statusCode != 503) {
          if (err.response?.data['status'] == false &&
              err.response?.statusCode == 200) {
            errorMessage = err.response!.data['data'];
          } else if (err.response?.statusCode == 400) {
            errorMessage = err.message ?? 'Bad request';
            //errorMessage = err.response?.data['error'];
          } else if (err.response?.statusCode == 404) {
            errorMessage = err.message ?? 'Requested resource is not found';
          } else if (err.response?.data is Map &&
              err.response!.data.containsKey('data')) {
            final error = err.response!.data['data'];

            // final error = errorMessageFromJson(e.response!.data.toString()).message;
            // Check the type of message and handle accordingly
            if (error is List) {
              List<String> messages = error.cast<String>();
              errorMessage = messages.first.toString();
              // Handle list of messages
            } else if (error is String) {
              // Handle single string message
              errorMessage = error;
            } else if (error is int) {
              // Handle integer message
            } else {
              // Handle other types of messages
            }
          } else if (err.response?.statusCode == 412) {
            errorMessage = err.message;
          }
        } else {
          errorMessage = ServerException.getErrorMessage(err);
        }
      } else {
        errorMessage = ServerException.getErrorMessage(err);
      }
      return TFailure(message: errorMessage ?? err.toString());
    } else {
      return const TFailure(
          message: 'An unexpected error occurred. Please try again');
      // UnknownFailure();
    }
  }
}
