import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keshoohin_flutter_app/src/core/utils/utils_export.dart';

Widget appImage(
    {String imagePath = ImageRes.defaultImg,
    double width = 16,
    double height = 16}) {
  return Image.asset(
    imagePath.isEmpty ? ImageRes.defaultImg : imagePath,
    width: width.w,
    height: height.h,
  );
}

Widget appImageWithColor(
    {String imagePath = ImageRes.defaultImg,
    double width = 16,
    double height = 16,
    Color color = AppColors.primaryElement}) {
  return Image.asset(
    imagePath.isEmpty ? ImageRes.defaultImg : imagePath,
    width: width.w,
    height: height.h,
    color: color,
  );
}
