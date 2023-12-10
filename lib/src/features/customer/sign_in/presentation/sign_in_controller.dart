import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keshoohin_flutter_app/src/core/core_export.dart';
import 'package:keshoohin_flutter_app/src/features/customer/sign_in/presentation/notifier/sign_in_notifier.dart';
import 'package:keshoohin_flutter_app/src/features/customer/user/domain/app_user.dart';
import 'package:keshoohin_flutter_app/src/features/customer/user/infrastructure/user/user_provider.dart';


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

    ref.read(appLoaderStateProvider.notifier).setLoaderValue(true);
    User? authUser = await ref
        .read(firebaseAuthenticationRepositoryProvider)
        .signInWithUserWithEmailAndPassword(email, password);

    final response = await ref
        .read(serverAuthRepositoryProvider)
        .handleAuthentication(authUser!,
            action: AuthAction.LOGIN, extraParams: password);

    ref
        .read(userRepositoryProvider)
        .setCurrentUser(AppUser(
          token: response.data['token'].toString(),
          email: response.data['Email'].toString(),
          phone: response.data['PhoneNumber'].toString(),
          name: response.data['FirstName'].toString(),
        ))
        .whenComplete(
            () => ref.read(storageRepositoryProvider).setLoginState(true))
        .whenComplete(() =>
            ref.read(appStateNotifierProvider.notifier).setloginState(true))
        .whenComplete(
            () => ref.read(appLoaderStateProvider.notifier).setLoaderValue(false))
        .whenComplete(() =>
            ref.read(appRouterProvider).router.goNamed(APP_PAGE.home.toName));
  }

  Future<void> handleSignInWithThirdParty() async {
    ref.read(appLoaderStateProvider.notifier).setLoaderValue(true);
    User? authUser = await ref
        .read(firebaseAuthenticationRepositoryProvider)
        .signInWithGoogle();

    //print(authUser);

    final response = await ref
        .read(serverAuthRepositoryProvider)
        .handleAuthentication(authUser!, action: AuthAction.LOGIN_WITH_TOKEN);

    ref
        .read(userRepositoryProvider)
        .setCurrentUser(AppUser(
          token: response.data['token'].toString(),
          email: response.data['Email'].toString(),
          phone: response.data['PhoneNumber'].toString(),
          name: response.data['FirstName'].toString(),
        ))
        .whenComplete(
            () => ref.read(storageRepositoryProvider).setLoginState(true))
        .whenComplete(() =>
            ref.read(appStateNotifierProvider.notifier).setloginState(true))
        .whenComplete(
            () => ref.read(appLoaderStateProvider.notifier).setLoaderValue(false))
        .whenComplete(() =>
            ref.read(appRouterProvider).router.goNamed(APP_PAGE.home.toName));
  }
}
