import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keshoohin_flutter_app/src/core/utils/utils_export.dart';
import 'package:keshoohin_flutter_app/src/core/widgets/app_shadow.dart';
import 'package:keshoohin_flutter_app/src/core/widgets/text_widgets.dart';


Widget appButton(
    {double width = 325,
    double height = 50,
    String buttonName = "",
    bool isColor = true,
    void Function()? func}) {
  return GestureDetector(
    onTap: func,
    child: Container(
      width: width.w,
      height: height.h,
      decoration: appBoxShadow(
          color: isColor ? AppColors.primaryElement : Colors.white,
          boxBorder: Border.all(color: AppColors.primaryFourthElementText)),
      child: Center(
          child: Text16Normal(
              text: buttonName,
              color: isColor
                  ? AppColors.primaryBackground
                  : AppColors.primaryText)),
    ),
  );
}
