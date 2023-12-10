import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keshoohin_flutter_app/src/core/utils/utils_export.dart';
import 'package:keshoohin_flutter_app/src/core/widgets/widgets_export.dart';
import 'package:keshoohin_flutter_app/src/features/customer/sign_in/presentation/sign_in_controller.dart';

Widget buildForgotPasswordBtn() {
  return Container(
      alignment: Alignment.centerRight,
      child: const TextUnderline(text: "Forgot password"));
}

Widget buildRememberMeCheckbox() {
  return SizedBox(
    height: 20.h,
    child: Row(
      children: <Widget>[
        Theme(
          data: ThemeData(unselectedWidgetColor: AppColors.primaryElement),
          child: Checkbox(
            value: true, //_rememberMe
            checkColor: Colors.green,
            activeColor: AppColors.primaryBackground,
            onChanged: (value) {
              // setState(() {
              //   _rememberMe = value!;
              // });
            },
          ),
        ),
        const Text12Normal(text: 'Remember me'),
      ],
    ),
  );
}

Widget buildThirdPartyLogin(SignInController controller) {
  return Container(
    margin: EdgeInsets.only(left: 70.w, right: 70.w, top: 40.h, bottom: 20.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _buildSocialBtn(
          onTap: () => print('Login with Facebook'),
          logo: const AssetImage(
            'assets/icons/facebook.jpg',
          ),
        ),
        _buildSocialBtn(
          onTap: () =>
              controller.handleSignInWithThirdParty(), //_handleGoogleLogin()
          logo: const AssetImage(
            'assets/icons/google.jpg',
          ),
        ),
      ],
    ),
  );
}

Widget _buildSocialBtn(
    {void Function()? onTap,
    AssetImage logo = const AssetImage(
      'assets/icons/google.jpg',
    )}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 40.h,
      width: 40.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 2),
            blurRadius: 6.0,
          ),
        ],
        image: DecorationImage(
          image: logo,
        ),
      ),
    ),
  );
}
