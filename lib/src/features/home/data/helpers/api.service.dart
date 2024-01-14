import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:flutter_test_app/gen/locator.gen.dart';
import 'package:flutter_test_app/src/constants/app.enums.dart';
import 'package:flutter_test_app/src/env/env.dart';
import 'package:flutter_test_app/src/features/home/data/helpers/dio.client.dart';

final ApiService apiService = sl<ApiService>();

abstract class ApiService {
  ///[payload] ==> payload that will be attached to request ,
  ///[endPoint] ==> path or uri associated with the baseUrl
  ///[requestType] ==> get,post,put etc
  ///[queryParams] ==> Query parameters
  ///[client] ==> In any case if the base url differs from the original the client will use it to reinitialize it to handle the
  /// new url.This is important to prevent recreating new Dio
  Future<dynamic> callService({
    required RequestType requestType,
    required String endPoint,
    dynamic payload,
    Map<String, dynamic>? queryParams,
    DioClient? client,
  });
}

class ApiServiceImpl extends ApiService {
  @override
  Future<dynamic> callService({
    required RequestType requestType,
    required String endPoint,
    payload,
    Map<String, dynamic>? queryParams,
    DioClient? client,
  }) async {
    late dio.Response response;

    final dioClient = client == null
        ? DioClient.initWithBaseUrl(baseUrl: Env.baseUrl).getDio
        : client.getDio;
    debugPrint('Endpoint: $endPoint');
    debugPrint('QueryParams: $queryParams');
    debugPrint('Payload: $payload');
    debugPrint('Client: ${client?.baseUrl}');
    // final token = TSecureStorage().getAuthResponse()?.data.token;
    // debugPrint('Token: $token');
    switch (requestType) {
      case RequestType.get:
        response = await dioClient.get(
          endPoint,
          queryParameters: queryParams,
          //options: dio.Options(headers: THelperFunction.appTokenHeader()),
          // cancelToken: cancelRequestToken,
        );
        break;
      case RequestType.post:
        response = await dioClient.post(
          endPoint,
          data: payload,
          queryParameters: queryParams,
          // options: dio.Options(headers: THelperFunction.appTokenHeader()),
          // cancelToken: cancelRequestToken,
        );
        break;
      case RequestType.put:
        response = await dioClient.put(
          endPoint,
          data: payload,
          queryParameters: queryParams,
          // options: dio.Options(headers: THelperFunction.appTokenHeader()),
          // cancelToken: cancelRequestToken,
        );
        break;
      case RequestType.patch:
        // TODO: Handle this case.
        break;
      case RequestType.delete:
        response = await dioClient.delete(
          endPoint,
          data: payload,
          queryParameters: queryParams,
          //options: dio.Options(headers: THelperFunction.appTokenHeader()),
          // cancelToken: cancelRequestToken,
        );
        break;
    }
    debugPrint('Response: ${response.data}');
    //return ApiResponse.fromJson(response.data);
    return response.data;
  }
}
