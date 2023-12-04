import 'package:dio/dio.dart';
import 'package:keshoohin_flutter_app/src/common/utils/api_config.dart';

class HttpUtil {
  late Dio dio;
  static final HttpUtil _instance = HttpUtil._internal();

  factory HttpUtil() {
    return _instance;
  }

  HttpUtil._internal() {
    BaseOptions options = BaseOptions(
        baseUrl: ApiConfig.baseUrl,
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 5),
        headers: {},
        contentType: "application/json: charset-utf-8",
        responseType: ResponseType.json);
    dio = Dio(options);
  }

  // post() {
  //   String path, {

  //   }
  // }
}
