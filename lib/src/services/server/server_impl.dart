import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keshoohin_flutter_app/src/common/utils/constants/api_config.dart';
import 'package:keshoohin_flutter_app/src/services/dio/dio_provider.dart';
import 'package:keshoohin_flutter_app/src/services/server/server_repository.dart';

class ServerImpl extends ServerRepository {
  late final Dio dio;
  final Ref ref;

  ServerImpl({required this.ref}) {
    _initialize();
  }

  Future<void> _initialize() async {
    // Retrieve the Dio instance
    dio = ref.read(dioProvider);
  }

  @override
  Future<Response<dynamic>> handleAuthentication(User user,
      {String action = 'register', String extraParams = ''}) async {
    final subbody = {
      'email': user.email,
      'uid': user.uid,
      'name': user.displayName,
      'password': extraParams,
    };

    print(subbody);
    final response = await _sendAuthenticationRequest(subbody, action);
    print(response);
    if (response.statusCode == 200) {
      final responseData = response.data;
      if (responseData != null) {
        print("$action successful");
        return response;
      } else {
        print("Response data is null.");
      }
    }

    if (response.statusCode == 201) {
      final responseData = response.data;
      if (responseData != null) {
        print("First time login. New account is created");
        return response;
      } else {
        print("Response data is null.");
      }
    }

    print("$action failed. Status code: ${response.statusCode}");
    throw Exception();
  }

  Future<Response> _sendAuthenticationRequest(
      Map<String, dynamic> subbody, String action) async {
    String endpoint;

    if (action == AuthAction.REGISTER) {
      endpoint = ApiConfig.postRegister().toString();
    } else if (action == AuthAction.LOGIN_WITH_UID) {
      endpoint = ApiConfig.postLoginWithUid().toString();
    } else {
      endpoint = ApiConfig.postLogin().toString();
    }

    return await dio.post(
      endpoint,
      data: {'user': subbody},
      options: Options(
        headers: {'Content-Type': 'application/json'},
      ),
    );
  }
}
