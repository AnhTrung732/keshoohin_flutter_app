import 'package:dio/dio.dart';
import 'package:keshoohin_flutter_app/src/common/utils/api_config.dart';
// 1. import the riverpod_annotation package
import 'package:riverpod_annotation/riverpod_annotation.dart';

// 2. add a part file
part 'dio_provider.g.dart';

// 3. use the @riverpod annotation
@Riverpod(keepAlive: true)
// 4. update the declaration
Dio dio(DioRef ref) {
  BaseOptions options = BaseOptions(
      baseUrl: ApiConfig.baseUrl,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
      headers: {},
      contentType: "application/json: charset-utf-8",
      responseType: ResponseType.json);
  return Dio(options);
}
