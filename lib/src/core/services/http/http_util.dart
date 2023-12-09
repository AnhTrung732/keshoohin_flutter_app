import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keshoohin_flutter_app/src/core/services/http/http_export.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'http_util.g.dart';

@Riverpod(keepAlive: true)
// 4. update the declaration
HttpUtil httpUtil(HttpUtilRef ref) {
  return HttpUtil(dio: ref.read(dioProvider), ref: ref);
}

class HttpUtil {
  final Dio dio;
  final Ref ref;
  HttpUtil({required this.dio, required this.ref});

  // Map<String, dynamic>? getAuthorizationHeader() {
  //   var headers = <String, dynamic>{};
  //   var accessToken = ref.read(storageRepositoryProvider).getTokenUser();
  //   if (accessToken!.isNotEmpty) {
  //     headers['Authorization'] = 'Keshoohin $accessToken';
  //   }
  //   return headers;
  // }

  post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    Options requestOptions = options ?? Options();
    requestOptions.headers = requestOptions.headers ?? {};

    // Map<String, dynamic>? authorization = getAuthorizationHeader();
    // if (authorization != null) {
    //   requestOptions.headers!.addAll(authorization);
    // }
    var response = await dio.post(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
    );

    return response;
  }

  get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    Options requestOptions = options ?? Options();
    requestOptions.headers = requestOptions.headers ?? {};

    var response = await dio.get(
      path,
      queryParameters: queryParameters,
      options: requestOptions,
    );

    return response;
  }
}
