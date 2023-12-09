import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class ServerAuthRepository {
  Future<Response<dynamic>> handleAuthentication(User user,
      {String action = 'register', String extraParams = ''});
}

class AuthAction {
  static const String REGISTER = 'register';
  static const String LOGIN = 'login';
  static const String LOGIN_WITH_TOKEN = 'login_with_token';
}
