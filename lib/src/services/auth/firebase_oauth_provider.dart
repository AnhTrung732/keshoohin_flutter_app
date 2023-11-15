import 'package:keshoohin_flutter_app/src/features/user/infrastructure/user_provider.dart';
import 'package:keshoohin_flutter_app/src/services/auth/firebase_oauth.dart';
import 'package:keshoohin_flutter_app/src/services/auth/firebase_oauth_impl.dart';
import 'package:keshoohin_flutter_app/src/services/https/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_oauth_provider.g.dart';

@riverpod
FirebaseAuthenticationRepository firebaseAuthenticationRepository(
        FirebaseAuthenticationRepositoryRef ref) =>
    FirebaseAuthenticationImpl(
      dio: ref.watch(dioProvider),
      userRepository: ref.watch(userRepositoryProvider).maybeWhen(
          data: (value) => value,
          orElse: () {
              //throw Null;
              throw Exception("UserRepository is not available");
          },
      )
    );
