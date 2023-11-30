import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keshoohin_flutter_app/src/common/global/app_state_notifier.dart';
import 'package:keshoohin_flutter_app/src/common/global/global_loader/global_loader.dart';
import 'package:keshoohin_flutter_app/src/common/widgets/app_popup_message.dart';
import 'package:keshoohin_flutter_app/src/features/sign_in/presentation/notifier/sign_in_notifier.dart';
import 'package:keshoohin_flutter_app/src/features/user/domain/app_user.dart';
import 'package:keshoohin_flutter_app/src/features/user/infrastructure/user/user_provider.dart';
import 'package:keshoohin_flutter_app/src/services/auth/firebase_oauth_provider.dart';
import 'package:keshoohin_flutter_app/src/services/routing/app_routes.dart';
import 'package:keshoohin_flutter_app/src/services/routing/app_routes_name.dart';
import 'package:keshoohin_flutter_app/src/services/server/server_provider.dart';
import 'package:keshoohin_flutter_app/src/services/server/server_repository.dart';

class SignInController {
  final WidgetRef ref;
  SignInController({required this.ref});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> handleSignInWithEmailAndPassWord() async {
    var state = ref.read(signInNotifierProvider);

    String email = state.email;
    String password = state.password;

    emailController.text = email;
    passwordController.text = password;

    if (state.email.isEmpty || email.isEmpty) {
      toastInfo("Your email is empty");
      return;
    }

    if (state.password.isEmpty || password.isEmpty) {
      toastInfo("Your password is empty");
      return;
    }

    ref.read(appLoaderProvider.notifier).setLoaderValue(true);
    User? authUser = await ref
        .read(firebaseAuthenticationRepositoryProvider)
        .signInWithUserWithEmailAndPassword(email, password);

    final response = await ref
        .read(serverRepositoryProvider)
        .handleAuthentication(authUser!,
            action: AuthAction.LOGIN, extraParams: password);

    ref
        .read(userRepositoryProvider)
        .setCurrentUser(AppUser(
          idUser: response.data['IDCus'].toString(),
          email: response.data['Email'].toString(),
          phone: response.data['PhoneNumber'].toString(),
          name: response.data['FirstName'].toString(),
        ))
        .whenComplete(() =>
            ref.read(appStateNotifierProvider.notifier).setloginState(true))
        .whenComplete(
            () => ref.read(appLoaderProvider.notifier).setLoaderValue(false))
        .whenComplete(() => ref
            .read(appRouterProvider)
            .router
            .pushReplacementNamed(APP_PAGE.home.toName));
  }

  Future<void> handleSignInWithThirdParty() async {
    ref.read(appLoaderProvider.notifier).setLoaderValue(true);
    User? authUser = await ref
        .read(firebaseAuthenticationRepositoryProvider)
        .signInWithGoogle();

    //print(authUser);

    final response = await ref
        .read(serverRepositoryProvider)
        .handleAuthentication(authUser!, action: AuthAction.LOGIN_WITH_UID);

    ref
        .read(userRepositoryProvider)
        .setCurrentUser(AppUser(
          idUser: response.data['IDCus'].toString(),
          email: response.data['Email'].toString(),
          phone: response.data['PhoneNumber'].toString(),
          name: response.data['FirstName'].toString(),
        ))
        .whenComplete(() =>
            ref.read(appStateNotifierProvider.notifier).setloginState(true))
        .whenComplete(
            () => ref.read(appLoaderProvider.notifier).setLoaderValue(false))
        .whenComplete(() => ref
            .read(appRouterProvider)
            .router
            .pushReplacementNamed(APP_PAGE.home.toName));
  }
}
