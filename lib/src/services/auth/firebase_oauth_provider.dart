import 'package:keshoohin_flutter_app/src/features/user/infrastructure/user/user_provider.dart';
import 'package:keshoohin_flutter_app/src/services/auth/firebase_oauth_repository.dart';
import 'package:keshoohin_flutter_app/src/services/auth/firebase_oauth_impl.dart';
import 'package:keshoohin_flutter_app/src/services/dio/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_oauth_provider.g.dart';

@Riverpod(keepAlive: true)
FirebaseAuthenticationRepository firebaseAuthenticationRepository(
        FirebaseAuthenticationRepositoryRef ref) =>
    FirebaseAuthenticationImpl(ref: ref);
