import 'package:keshoohin_flutter_app/src/features/user/infrastructure/user/user.dart';
import 'package:keshoohin_flutter_app/src/features/user/infrastructure/user/user_impl.dart';
import 'package:keshoohin_flutter_app/src/services/shared_preferences/shared_preferences_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_provider.g.dart';

@riverpod
Future<UserRepository> userRepository(UserRepositoryRef ref) async =>
    UserRepositoryImpl(ref);
