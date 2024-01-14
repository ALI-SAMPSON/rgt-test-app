import 'package:dartz/dartz.dart';
import 'package:flutter_test_app/gen/locator.gen.dart';
import 'package:flutter_test_app/src/features/home/data/errors/failure.dart';
import 'package:flutter_test_app/src/features/home/data/wrappers/catch_error_wrapper.dart';
import 'package:injectable/injectable.dart';

typedef AsyncFunction<T> = Future<T> Function();

typedef CustomError = String? Function(Object e, StackTrace stackTrace);

typedef StringFunction = String? Function(String);

final CustomRepositoryWrapper customRepositoryWrapper =
    sl<CustomRepositoryWrapper>();

abstract class CustomRepositoryWrapper {
  // returns an error or anything else
  Future<Either<TFailure, T>> wrapRepositoryFunction<T>(
      {required AsyncFunction<T> function, CustomError? customError});
}

@LazySingleton(as: CustomRepositoryWrapper)
class CustomRepositoryWrapperImpl extends CustomRepositoryWrapper {
  final CatchApiErrorWrapper customErrorWrapper = sl<CatchApiErrorWrapper>();
  @override
  Future<Either<TFailure, T>> wrapRepositoryFunction<T>(
      {required AsyncFunction<T> function, CustomError? customError}) async {
    try {
      final result = await function();
      return Right(result);
    } catch (err, stackTrace) {
      if (customError == null) {
        return Left(await catchApiErrorWrapper.handleError(
            err: err, stackTrace: stackTrace));
      } else {
        return Left(await catchApiErrorWrapper.handleError(
            err: err, stackTrace: stackTrace));
        //return Left( customError(err, stackTrace)!);
      }
    }
  }
}
