import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keshoohin_flutter_app/src/core/utils/image_res.dart';
import 'package:keshoohin_flutter_app/src/core/utils/utils_export.dart';
import 'package:keshoohin_flutter_app/src/core/widgets/app_image.dart';
import 'package:keshoohin_flutter_app/src/core/widgets/app_shadow.dart';
import 'package:keshoohin_flutter_app/src/core/widgets/app_textfields.dart';


Widget appSearchBar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      //search text box
      Container(
          width: 280.w,
          height: 40.h,
          decoration: appBoxShadow(
              color: AppColors.primaryFourthElementText,
              boxBorder: Border.all(color: AppColors.primaryFourthElementText)),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 17.w),
                child: appImage(imagePath: ImageRes.searchIcon),
              ),
              SizedBox(
                width: 240.w,
                height: 40.h,
                child: appTextFieldOnly(
                    width: 240,
                    height: 40,
                    hintText: "Tìm sản phẩm của bạn .."),
              )
            ],
          )),
      GestureDetector(
          child: Container(
            padding: EdgeInsets.all(5.w),
        width: 40.w,
        height: 40.h,
        decoration: appBoxShadow(
            boxBorder: Border.all(color: AppColors.primaryElement)),
        child: appImageWithColor(imagePath: ImageRes.filterIcon, color: AppColors.primaryElementText),
      ))
    ],
  );
}
