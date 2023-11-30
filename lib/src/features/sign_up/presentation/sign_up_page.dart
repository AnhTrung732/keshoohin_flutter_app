import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keshoohin_flutter_app/src/common/global/global_loader/global_loader.dart';
import 'package:keshoohin_flutter_app/src/common/utils/app_colors.dart';
import 'package:keshoohin_flutter_app/src/common/widgets/app_bar.dart';
import 'package:keshoohin_flutter_app/src/common/widgets/app_button_widgets.dart';
import 'package:keshoohin_flutter_app/src/common/widgets/app_circular_progress_indicator.dart';
import 'package:keshoohin_flutter_app/src/common/widgets/app_textfields.dart';
import 'package:keshoohin_flutter_app/src/common/widgets/text_widgets.dart';
import 'package:keshoohin_flutter_app/src/features/sign_up/presentation/notifier/register_notifier.dart';
import 'package:keshoohin_flutter_app/src/features/sign_up/presentation/sign_up_controller.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignInPageState();
}

class _SignInPageState extends ConsumerState<SignUpPage> {
  late SignUpController _controller;

  @override
  void initState() {
    super.initState();
    _controller = SignUpController(ref: ref);
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(registerNotifierProvider);
    final loader = ref.watch(appLoaderProvider);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            appBar: appBar(context, "Sign Up"),
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
                          //buildThirdPartyLogin(),
                          SizedBox(height: 20.h),
                          text14Normal(
                              text: "Enter your detail below & free sign up"),
                          SizedBox(height: 30.h),
                          appTextFieldItem(
                            controller: _controller.userNameController,
                              icon: const Icon(
                                Icons.email,
                                color: AppColors.primarySecondeElement,
                              ),
                              text: "User",
                              hintText: "Enter your user name",
                              func: (value) => ref
                                  .read(registerNotifierProvider.notifier)
                                  .onUserNameChange(value)),
                          SizedBox(height: 20.h),
                          appTextFieldItem(
                            controller: _controller.emailController,
                              icon: const Icon(
                                Icons.email,
                                color: AppColors.primarySecondeElement,
                              ),
                              text: "Email",
                              hintText: "Enter your email address",
                              func: (value) => ref
                                  .read(registerNotifierProvider.notifier)
                                  .onEmailChange(value)),
                          SizedBox(height: 20.h),
                          appTextFieldItem(
                            controller: _controller.passwordController,
                              icon: const Icon(
                                Icons.lock,
                                color: AppColors.primarySecondeElement,
                              ),
                              text: "Password",
                              hintText: "Enter your password",
                              obscureText: true,
                              func: (value) => ref
                                  .read(registerNotifierProvider.notifier)
                                  .onPasswordChange(value)),
                          SizedBox(height: 20.h),
                          appTextFieldItem(
                            controller: _controller.rePasswordController,
                              icon: const Icon(
                                Icons.lock,
                                color: AppColors.primarySecondeElement,
                              ),
                              text: "Confirm Password",
                              hintText: "Enter your confirm password",
                              obscureText: true,
                              func: (value) => ref
                                  .read(registerNotifierProvider.notifier)
                                  .onRePasswordChange(value)),
                          SizedBox(height: 30.h),
                          text14Normal(
                              text:
                                  "By creating an account you are agreeing with our terms and conditions"),
                          SizedBox(height: 120.h),
                          appButton(
                              buttonName: "Register",
                              isColor: true,
                              func: () => _controller.handleSignUp()),
                        ],
                      ),
                    ),
                  )
                : appCircularProgressIndicator()),
      ),
    );
  }
}
