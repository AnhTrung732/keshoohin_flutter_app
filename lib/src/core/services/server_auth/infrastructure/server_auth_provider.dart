import 'package:keshoohin_flutter_app/src/core/services/server_auth/server_auth_export.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'server_auth_provider.g.dart';
@riverpod
ServerAuthRepository serverAuthRepository(ServerAuthRepositoryRef ref) =>
    ServerAuthImpl(ref: ref);
