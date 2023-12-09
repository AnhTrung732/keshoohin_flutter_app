import 'package:keshoohin_flutter_app/src/core/services/auth/auth_export.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_oauth_provider.g.dart';

@Riverpod(keepAlive: true)
FirebaseAuthenticationRepository firebaseAuthenticationRepository(
        FirebaseAuthenticationRepositoryRef ref) =>
    FirebaseAuthenticationImpl(ref: ref);
