import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keshoohin_flutter_app/src/core/core_export.dart';
import 'package:keshoohin_flutter_app/src/features/customer/sign_up/presentation/notifier/register_notifier.dart';

class SignUpController {
  final WidgetRef ref;
  SignUpController({required this.ref});

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController rePasswordController = TextEditingController();

  Future<void> handleSignUp() async {
    var state = ref.read(registerNotifierProvider);

    String userName = state.userName;
    String email = state.email;
    String password = state.password;
    String rePassword = state.rePassword;

    userNameController.text = userName;
    emailController.text = email;
    passwordController.text = password;
    rePasswordController.text = rePassword;

    if (state.userName.isEmpty || userName.isEmpty) {
      toastInfo("Your name is empty");
      return;
    }

    if (state.userName.length < 6 || userName.length < 6) {
      toastInfo("Your name is too short");
      return;
    }

    if ((state.password.isEmpty || state.rePassword.isEmpty) ||
        password.isEmpty ||
        rePassword.isEmpty) {
      toastInfo("Your password is empty");
      return;
    }

    if (password != rePassword) {
      toastInfo("Your password did not match !");
      return;
    }

    ref.read(appLoaderStateProvider.notifier).setLoaderValue(true);

    User? authUser = await ref
        .read(firebaseAuthenticationRepositoryProvider)
        .createUserWithEmailAndPassword(email, password, userName);

    ref
        .read(serverAuthRepositoryProvider)
        .handleAuthentication(authUser!,
            action: AuthAction.REGISTER, extraParams: password)
        
        .whenComplete(() =>
            ref.read(appLoaderStateProvider.notifier).setLoaderValue(false))
        .whenComplete(() => ref.read(appRouterProvider).router.pop());
  }
}
