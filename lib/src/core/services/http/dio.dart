import 'dart:math';

import 'package:dio/dio.dart';
import 'package:keshoohin_flutter_app/src/core/common_domain/entities/error_entity.dart';
import 'package:keshoohin_flutter_app/src/core/services/http/connectiviy_checker.dart';
import 'package:keshoohin_flutter_app/src/core/utils/api_config.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio.g.dart';

@Riverpod(keepAlive: true)
Dio dio(DioRef ref) {
  BaseOptions options = BaseOptions(
      baseUrl: ApiConfig.baseUrl,
      connectTimeout: const Duration(seconds: 12),
      receiveTimeout: const Duration(seconds: 12),
      headers: {},
      contentType: "application/json;  charset=utf-8",
      responseType: ResponseType.json);

  final Dio dio = Dio(options);

  
  dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
    return handler.next(options);
  }, onResponse: (response, handler) {
    return handler.next(response);
  }, onError: (DioException e, handler) {
    ErrorEntity eInfor = createErrorEntity(e);
    onError(eInfor);
  }));
  return dio;
}

ErrorEntity createErrorEntity(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return ErrorEntity(code: -1, message: "Connection timed out");
    case DioExceptionType.sendTimeout:
      return ErrorEntity(code: -1, message: "Send timed out");
    case DioExceptionType.receiveTimeout:
      return ErrorEntity(code: -1, message: "Recieve timed out");
    case DioExceptionType.badCertificate:
      return ErrorEntity(code: -1, message: "Bad SSL certificate");
    case DioExceptionType.badResponse:
      return ErrorEntity(code: -1, message: "Server bad response");
    case DioExceptionType.cancel:
      return ErrorEntity(code: -1, message: "Server canceled it");
    case DioExceptionType.connectionError:
      return ErrorEntity(code: -1, message: "Connection timed out");
    case DioExceptionType.unknown:
      return ErrorEntity(code: -1, message: "Unknown error");
  }
}

void onError(ErrorEntity eInfo) {
  print('Error.code -> ${eInfo.code}, Error.message -> ${eInfo.message}');
  switch (eInfo.code) {
    case 400:
      print("Server syntax error");
      break;
    case 401:
      print("You are denied to continue");
      break;
    case 500:
      print("Internal server error");
    default:
      print("Unknown error");
      break;
  }
}
