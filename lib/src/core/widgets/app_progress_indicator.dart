import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keshoohin_flutter_app/src/core/utils/utils_export.dart';

class AppCircularProgressIndicator extends StatelessWidget {
  const AppCircularProgressIndicator(
      {super.key, this.height = double.infinity, this.width = double.infinity});
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      height: height.h,
      child: const Center(
        child: CircularProgressIndicator(
          backgroundColor: AppColors.primaryBackground,
          color: AppColors.primaryElement,
        ),
      ),
    );
  }
}

class AppProductProgressIndicator extends StatelessWidget {
  const AppProductProgressIndicator({super.key, this.height = double.infinity, this.width = double.infinity});
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: width.w,
      height: height.h,
      child: const Center(
        child: Icon(
          Icons.production_quantity_limits,
          color: AppColors.primaryElement,
        ),
      ),
    );
  }
}
