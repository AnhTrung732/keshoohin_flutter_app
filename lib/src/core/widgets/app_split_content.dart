import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keshoohin_flutter_app/src/core/core_export.dart';

class AppSplitContent extends StatelessWidget {
  const AppSplitContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15.h,
      margin:  EdgeInsets.symmetric(vertical: 15.h),
      color: AppColors.primaryFifthElementText, // Set the color to gray
    );
  }
}
