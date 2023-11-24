import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

abstract class FirebaseAuthenticationRepository {
  Future<FirebaseApp> initializeFirebase();
  Future<User?> signInWithGoogle();
}

