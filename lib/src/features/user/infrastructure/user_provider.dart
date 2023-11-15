import 'package:keshoohin_flutter_app/src/features/user/infrastructure/user.dart';
import 'package:keshoohin_flutter_app/src/features/user/infrastructure/user_impl.dart';
import 'package:keshoohin_flutter_app/src/services/shared_preferences/shared_preferences_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../services/shared_preferences/shared_preferences_repository.dart';

part 'user_provider.g.dart';

@riverpod
Future<UserRepository> userRepository(UserRepositoryRef ref) async => UserRepositoryImpl(
     ref.watch(sharedPreferencesRepositoryProvider).maybeWhen(
      data: (value) => value,
      orElse: () {
        //throw Null;
        throw Exception("sharedPreferencesRepository is not available");
      },
    )
);
