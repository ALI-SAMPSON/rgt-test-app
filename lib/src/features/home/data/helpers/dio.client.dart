import 'package:dio/dio.dart';
import 'package:flutter_test_app/src/env/env.dart';

class DioClient {
  final String baseUrl;
  final int? connectionTimeout, receiveTimeout, sendTimeout; //in  seconds
  final ResponseType? responseType;

  DioClient.initWithBaseUrl(
      {required this.baseUrl,
      this.connectionTimeout = 30,
      this.receiveTimeout = 45,
      this.sendTimeout = 30,
      this.responseType = ResponseType.json});

  Dio get getDio => _dio;

  final Dio _dio = Dio(
    BaseOptions(
        baseUrl: Env.baseUrl,
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
        sendTimeout: const Duration(seconds: 45),
        responseType: ResponseType.json),
  )..interceptors.addAll([
      InterceptorsWrapper(
        onRequest:
            (RequestOptions options, RequestInterceptorHandler handler) async {
          return handler.next(options);
        },
        onResponse: (Response response, ResponseInterceptorHandler handler) {
          if (response.data != null) {
            return handler.next(response);
          } else {
            return handler.reject(DioException(
                error: "Empty response data",
                requestOptions: response.requestOptions));
          }
        },
        onError: (DioException e, ErrorInterceptorHandler handler) {
          return handler.reject(e);
        },
      ),
    ]);
}
