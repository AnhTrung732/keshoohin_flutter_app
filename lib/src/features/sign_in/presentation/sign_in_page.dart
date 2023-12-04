import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:keshoohin_flutter_app/src/common/global/global_loader/global_loader.dart';
import 'package:keshoohin_flutter_app/src/common/utils/app_colors.dart';
import 'package:keshoohin_flutter_app/src/common/widgets/app_bar.dart';
import 'package:keshoohin_flutter_app/src/common/widgets/app_button_widgets.dart';
import 'package:keshoohin_flutter_app/src/common/widgets/app_circular_progress_indicator.dart';
import 'package:keshoohin_flutter_app/src/common/widgets/app_textfields.dart';
import 'package:keshoohin_flutter_app/src/common/widgets/text_widgets.dart';
import 'package:keshoohin_flutter_app/src/features/sign_in/presentation/notifier/sign_in_notifier.dart';
import 'package:keshoohin_flutter_app/src/features/sign_in/presentation/sign_in_controller.dart';
import 'package:keshoohin_flutter_app/src/features/sign_in/presentation/widgets/sign_in_widgets.dart';
import 'package:keshoohin_flutter_app/src/services/routing/app_routes_name.dart';

class SignInPage extends ConsumerStatefulWidget {
  const SignInPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignInPageState();
}

class _SignInPageState extends ConsumerState<SignInPage> {
  final bool _rememberMe = false;
  late SignInController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = SignInController(ref: ref);
  }

  @override
  Widget build(BuildContext context) {
    final signInProvider = ref.watch(signInNotifierProvider);
    final loader = ref.watch(appLoaderProvider);

    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            appBar: appBar(context, "Login"),
            body: loader == false
                ? SizedBox(
                    height: double.infinity,
                    child: SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      padding: EdgeInsets.symmetric(
                        horizontal: 25.w,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          buildThirdPartyLogin(_controller),
                          const Text14Normal(text: "Or use email account to login"),
                          SizedBox(height: 20.h),
                          appTextFieldItem(
                              controller: _controller.emailController,
                              icon: const Icon(
                                Icons.email,
                                color: AppColors.primarySecondElement,
                              ),
                              text: "Email",
                              hintText: "Enter your Email",
                              func: (value) => ref
                                  .read(signInNotifierProvider.notifier)
                                  .onEmailChange(value)),
                          SizedBox(height: 20.h),
                          appTextFieldItem(
                              controller: _controller.passwordController,
                              icon: const Icon(
                                Icons.lock,
                                color: AppColors.primarySecondElement,
                              ),
                              text: "Password",
                              hintText: "Enter your Password",
                              obscureText: true,
                              func: (value) => ref
                                  .read(signInNotifierProvider.notifier)
                                  .onPasswordChange(value)),
                          SizedBox(height: 10.h),
                          buildForgotPasswordBtn(),
                          buildRememberMeCheckbox(),
                          SizedBox(height: 100.h),
                          appButton(
                              buttonName: "Login",
                              func: () => _controller
                                  .handleSignInWithEmailAndPassWord()),
                          SizedBox(height: 30.h),
                          appButton(
                              buttonName: "Register",
                              isColor: false,
                              func: () =>
                                  context.pushNamed(APP_PAGE.signup.toName)),
                        ],
                      ),
                    ),
                  )
                : appCircularProgressIndicator()),
      ),
    );
  }
}
