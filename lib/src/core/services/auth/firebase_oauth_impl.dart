import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:keshoohin_flutter_app/src/core/services/auth/firebase_oauth_repository.dart';
import 'package:keshoohin_flutter_app/src/core/widgets/widgets_export.dart';

class FirebaseAuthenticationImpl extends FirebaseAuthenticationRepository {
  final Ref ref;
  final FirebaseAuth auth = FirebaseAuth.instance;

  FirebaseAuthenticationImpl({required this.ref});

  @override
  Future<User?> signInWithGoogle() async {
    try {
      print("Signing in...");
      final googleSignInAccount = await _getGoogleSignInAccount();
      if (googleSignInAccount != null) {
        return await _signInWithGoogleAccount(googleSignInAccount);
      }
    } catch (error) {
      _handleError(error);
    }
    return null;
    //return null;
  }

  Future<GoogleSignInAccount?> _getGoogleSignInAccount() async {
    final googleSignIn = GoogleSignIn();
    return await googleSignIn.signIn();
  }

  Future<User?> _signInWithGoogleAccount(
      GoogleSignInAccount googleSignInAccount) async {
    final googleSignInAuthentication = await googleSignInAccount.authentication;
    final credential =
        _getGoogleAuthProviderCredential(googleSignInAuthentication);

    final userCredential = await auth.signInWithCredential(credential);
    if (userCredential.user != null) {
      return userCredential.user!;
    }
    return null;
    //return null;
    //await serverRepository.handleAuthentication(user, action: 'loginWithUid');
  }

  AuthCredential _getGoogleAuthProviderCredential(
      GoogleSignInAuthentication googleSignInAuthentication) {
    return GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );
  }

  @override
  Future<User?> createUserWithEmailAndPassword(
      String email, String password, String userName) async {
    try {
      final userCredential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCredential.user != null) {
        final user = userCredential.user!;
        return await _handleUserCreation(user, userName, password);
      }
    } catch (error) {
      _handleError(error);
    }
    return null;
    //return null;
  }

  Future<User?> _handleUserCreation(
      User user, String userName, String password) async {
    await user.sendEmailVerification().whenComplete(() => toastInfo(
        "An email has been sent to verify your account. Please open that mail and click on the verification link to complete the registration process"));
    await user.updateDisplayName(userName);
    await user.reload();
    User? latestUser = FirebaseAuth.instance.currentUser!;
    return latestUser;
    
  }

  @override
  Future<User?> signInWithUserWithEmailAndPassword(
      String email, String password) async {
    try {
      final userCredential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCredential.user != null) {
        final user = userCredential.user!;
        return await _handleUserLogin(user, password);
      }
    } catch (error) {
      _handleError(error);
    }
    return null;
  }

  Future<User?> _handleUserLogin(User user, String password) async {
    if (!user.emailVerified) {
      toastInfo("You must verify your email address first");
    } else {
      return user;
    }
    return null;
    //return null;
  }

  void _handleError(dynamic error) {
    print("Error: $error");
  }
}
