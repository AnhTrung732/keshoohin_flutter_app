import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keshoohin_flutter_app/src/common/utils/app_colors.dart';
import 'package:keshoohin_flutter_app/src/common/widgets/app_shadow.dart';
import 'package:keshoohin_flutter_app/src/common/widgets/text_widgets.dart';

Widget appTextFieldItem({
  TextEditingController? controller,
  Icon icon = const Icon(
    Icons.email,
    color: AppColors.primarySecondElement,
  ),
  String text = "",
  String hintText = "Type your information correctly !",
  bool obscureText = false,
  void Function(String value)? func,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text14Normal(text: text),
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
            contentPadding: EdgeInsets.only(top: 14.h),
            prefixIcon: icon,
            hintText: hintText,
          ),
          obscureText: obscureText,
        ),
      ),
    ],
  );
}

Widget appTextFieldOnly({
  TextEditingController? controller,
  String hintText = "Type your information correctly !",
  bool obscureText = false,
  double width = 280,
  double height = 50,
  void Function(String value)? func,
}) {
  return SizedBox(
    width: width.w,
    height: height.h,
    child: TextField(
      controller: controller,
      onChanged: (value) => func!(value),
      keyboardType: TextInputType.multiline,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent)),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent)),
        disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent)),
        contentPadding: EdgeInsets.only(top: 5.h, left: 10.w),
        hintText: hintText,
      ),
      obscureText: obscureText,
      maxLines: 1,
      autocorrect: false,
    ),
  );
}
