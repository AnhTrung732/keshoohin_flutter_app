import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keshoohin_flutter_app/src/common/utils/app_colors.dart';

Widget text12NormalBlack(
    {String text = "", Color color = AppColors.primaryText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
        color: color,
        fontFamily: 'OpenSans',
        fontSize: 12.sp,
        fontWeight: FontWeight.normal),
  );
}

Widget text16Normal(
    {String text = "", Color color = AppColors.primarySecondaryElementText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
        color: color,
        fontFamily: 'OpenSans',
        fontSize: 16.sp,
        fontWeight: FontWeight.normal),
  );
}

Widget text14Normal(
    {String text = "", Color color = AppColors.primaryThirdElementText}) {
  return Text(
    text,
    textAlign: TextAlign.start,
    style: TextStyle(
        color: color,
        fontFamily: 'OpenSans',
        fontSize: 14.sp,
        fontWeight: FontWeight.normal),
  );
}

Widget textUnderline({String text = "Forgot password", double fontSize = 12}) {
  return GestureDetector(
    onTap: () {},
    child: Text(
      text,
      style: TextStyle(
          color: AppColors.primaryText,
          decoration: TextDecoration.underline,
          decorationColor: AppColors.primaryText,
          fontWeight: FontWeight.normal,
          fontSize: fontSize,
          fontFamily: 'OpenSans'),
    ),
  );
}
