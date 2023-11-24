import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:keshoohin_flutter_app/src/features/user/domain/app_user.dart';
import 'package:keshoohin_flutter_app/src/features/user/infrastructure/user/user.dart';
import 'package:keshoohin_flutter_app/src/utils/constants/api_config.dart';
import 'package:keshoohin_flutter_app/src/services/auth/firebase_oauth_repository.dart';
import 'package:keshoohin_flutter_app/src/utils/firebase_option.dart';

class FirebaseAuthenticationImpl extends FirebaseAuthenticationRepository {
  final Dio dio;
  final UserRepository userRepository;
  FirebaseAuthenticationImpl({required this.dio, required this.userRepository});

  @override
  Future<FirebaseApp> initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    // TODO: Add auto login logic
    return firebaseApp;
  }

  @override
  Future<User?> signInWithGoogle() async {
    try {
      print("Signing in...");

      final googleSignInAccount = await _getGoogleSignInAccount();
      if (googleSignInAccount != null) {
        final user = await _signInWithGoogleAccount(googleSignInAccount);
        return user;
      }
    } catch (error) {
      _handleError(error);
    }

    return null;
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

    final auth = FirebaseAuth.instance;
    final userCredential = await auth.signInWithCredential(credential);
    final user = userCredential.user!;
    print(user.uid);
    print(user.email);
    print(user.displayName);
    print(user.phoneNumber);

    await _handleLoginRequest(user);

    return user;
  }

  AuthCredential _getGoogleAuthProviderCredential(
      GoogleSignInAuthentication googleSignInAuthentication) {
    return GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );
  }

  Future<void> _handleLoginRequest(User user) async {
    final subbody = {
      'email': user.email,
      'uid': user.uid,
    };

    final response = await _sendLoginRequest(subbody);
    if (response.statusCode == 200) {
      final responseData = response.data;

      if (responseData != null) {
        final account = await _createAccountFromResponse(responseData);
        await _saveUserAccountToSharedPreferences(account);
        print("Login successful");
      } else {
        print("Response data is null.");
      }
    } else {
      print("Login failed. Status code: ${response.statusCode}");
    }
  }

  Future<Response<Map<String, dynamic>>> _sendLoginRequest(
      Map<String, dynamic> subbody) async {
    return await dio.post(
      ApiConfig.postLogin.toString(),
      data: {'user': subbody},
      options: Options(
        headers: {'Content-Type': 'application/json'},
      ),
    );
  }

  Future<AppUser> _createAccountFromResponse(Map<String, dynamic> responseData) async {
    return AppUser(
      idUser: responseData['IDCus'].toString(),
      email: responseData['Email'].toString(),
      phone: responseData['PhoneNumber'].toString(),
      name: responseData['FirstName'].toString(),
    );
  }

  Future<void> _saveUserAccountToSharedPreferences(AppUser appUser) async {
    await userRepository.setCurrentUser(appUser);
  }

  void _handleError(dynamic error) {
    print("Error: $error");
  }
}
