import 'package:flutter_test_app/gen/locator.gen.dart';
import 'package:flutter_test_app/src/features/home/data/errors/exceptions.dart';
import 'package:flutter_test_app/src/features/home/data/network/network.info.dart';
import 'package:injectable/injectable.dart';

final AsyncFunctionWrapper asyncFunctionWrapper = sl<AsyncFunctionWrapper>();

abstract class AsyncFunctionWrapper {
  Future handleAsyncNetworkCall(
    Function() asyncMethod,
  );
}

@LazySingleton(as: AsyncFunctionWrapper)
class AsyncFunctionWrapperImpl extends AsyncFunctionWrapper {
  @override
  Future handleAsyncNetworkCall(Function() asyncMethod) async {
    if (await networkInfo.isConnected) {
      return await asyncMethod();
    } else {
      return NoInternetException();
    }
  }
}
