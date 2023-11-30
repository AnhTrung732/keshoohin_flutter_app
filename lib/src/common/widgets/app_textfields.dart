import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keshoohin_flutter_app/src/common/utils/app_colors.dart';
import 'package:keshoohin_flutter_app/src/common/widgets/app_shadow.dart';
import 'package:keshoohin_flutter_app/src/common/widgets/text_widgets.dart';

Widget appTextFieldItem({
  TextEditingController? controller,
  Icon icon = const Icon(
    Icons.email,
    color: AppColors.primarySecondeElement,
  ),
  String text = "",
  String hintText = "Type your information correctly !",
  bool obscureText = false,
  void Function(String value)? func,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      text14Normal(text: text),
      const SizedBox(height: 5.0),
      Container(
        alignment: Alignment.centerLeft,
        decoration: appBoxShadowTextField(),
        width: 325.w,
        height: 50.h,
        child: TextField(
          controller: controller,
          onChanged: (value) => func!(value),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            //border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14.h),
            prefixIcon: icon,
            hintText: hintText,
            //labelStyle: lightTheme.inputDecorationTheme.labelStyle,
            // hintStyle: kHintTextStyle,
          ),
          obscureText: obscureText,
        ),
      ),
    ],
  );
}
