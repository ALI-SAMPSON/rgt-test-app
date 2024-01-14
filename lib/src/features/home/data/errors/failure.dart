import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure();

  String getMessage();

  @override
  List<Object?> get props => [];
}

class TFailure extends Failure {
  const TFailure({
    required this.message,
  });

  final String message;

  @override
  List<Object> get props => [message];

  @override
  String getMessage() => message;
}

class NoInternetFailure extends Failure {
  @override
  List<Object> get props => [];
  @override
  String toString() =>
      'No Internet available. Please make sure your mobile data or wifi is turned on and try again.';

  @override
  String getMessage() =>
      'No Internet available. Please make sure your mobile data or wifi is turned on and try again.';
}

class TimeoutFailure extends Failure {
  const TimeoutFailure({
    required this.message,
  });
  final String message;

  @override
  List<Object> get props => [];

  @override
  String toString() => message;

  @override
  String getMessage() => message;
}

class BadRequestFailure extends Failure {
  const BadRequestFailure({
    required this.message,
  });
  final String message;

  @override
  List<Object> get props => [message];

  @override
  String getMessage() => message;
}

class UnauthorisedFailure extends Failure {
  const UnauthorisedFailure({
    required this.message,
  });
  final String message;

  @override
  List<Object> get props => [message];

  @override
  String getMessage() => message;
}

class ServerFailure extends Failure {
  const ServerFailure({
    required this.message,
  });
  final String message;

  @override
  List<Object> get props => [message];

  @override
  String getMessage() => message;
}

class SessionTimeOut extends Failure {
  const SessionTimeOut({
    required this.message,
  });
  final String message;

  @override
  List<Object> get props => [message];

  @override
  String getMessage() => message;
}

class UnknownFailure extends Failure {
  @override
  List<Object> get props => [];

  @override
  String toString() => 'An unexpected error occurred. Please try again';

  @override
  String getMessage() => 'An unexpected error occurred. Please try again';
}
