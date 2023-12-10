import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keshoohin_flutter_app/src/core/services/http/http_util.dart';
import 'package:keshoohin_flutter_app/src/core/services/services_export.dart';
import 'package:keshoohin_flutter_app/src/core/utils/utils_export.dart';

class ServerAuthImpl extends ServerAuthRepository {
  late final HttpUtil httpUtil;
  final Ref ref;

  ServerAuthImpl({required this.ref}) {
    _initialize();
  }

  Future<void> _initialize() async {
    // Retrieve the httpUtil instance
    httpUtil = ref.read(httpUtilProvider);
  }

  @override
  handleAuthentication(User user,
      {String action = 'register', String extraParams = ''}) async {
    String endpoint;

    if (action == AuthAction.REGISTER) {
      endpoint = ApiConfig.postRegister().toString();
    } else if (action == AuthAction.LOGIN_WITH_TOKEN) {
      endpoint = ApiConfig.postLoginWithToken().toString();
    } else {
      endpoint = ApiConfig.postLogin().toString();
    }

    final userServerAuthRequestEntity = UserServerAuthRequestEntity(
        email: user.email,
        token: user.uid,
        name: user.displayName,
        password: extraParams);

    return await httpUtil.post(
      endpoint,
      data: {'user': userServerAuthRequestEntity.toJson()},
    );
  }
}
