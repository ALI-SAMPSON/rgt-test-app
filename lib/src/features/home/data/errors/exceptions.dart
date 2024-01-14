import 'package:dio/dio.dart';

class NoInternetException implements Exception {
  @override
  String toString() =>
      'No Internet available. Please make sure your mobile data or wifi is turned on and try again.';
}

class TimeoutException implements Exception {
  const TimeoutException({
    required this.message,
  });
  final String message;
}

class BadRequestException implements Exception {
  const BadRequestException({
    required this.message,
  });
  final String message;
}

class UnauthorisedException implements Exception {
  const UnauthorisedException({
    required this.message,
  });
  final String message;
}

// class ServerException implements Exception {
//   const ServerException({
//     required this.message,
//   });
//   final String message;
// }

class ServerException implements Exception {
  const ServerException({required this.message});

  final String message;

  static String? getErrorMessage(DioError e) {
    String? message;
    if (e.type == DioErrorType.connectionError) {
      message =
          'Oops, something is not right.\nPlease check your internet connection';
    } else if (e.type == DioErrorType.connectionTimeout) {
      message = 'Request took so long and has timed out';
    } else if (e.type == DioErrorType.receiveTimeout) {
      message = 'Server took soo long respond.\nPlease try again';
    } else if (e.type == DioErrorType.badResponse) {
      message = 'Service unavailable';
    } else if (e.type == DioErrorType.cancel) {
      message = 'Request Cancelled';
    }
    return message!;
  }
}
