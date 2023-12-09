import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

abstract class FirebaseAuthenticationRepository {
  Future<User?> signInWithGoogle();
  Future<User?> createUserWithEmailAndPassword(
      String email, String password, String userName);
  Future<User?> signInWithUserWithEmailAndPassword(
      String email, String password);
}
