import 'package:flutter_test_app/gen/locator.gen.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

final NetworkInfo networkInfo = sl<NetworkInfo>();

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

@LazySingleton(as: NetworkInfo)
class NetworkInfoImpl implements NetworkInfo {
  // NetworkInfoImpl(this.dataConnectionChecker);
  // final InternetConnectionChecker dataConnectionChecker;

  @override
  Future<bool> get isConnected => InternetConnectionChecker().hasConnection;
}
