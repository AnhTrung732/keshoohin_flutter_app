import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keshoohin_flutter_app/src/core/utils/utils_export.dart';
import 'package:keshoohin_flutter_app/src/core/widgets/app_image.dart';
import 'package:keshoohin_flutter_app/src/core/widgets/app_shadow.dart';
import 'package:keshoohin_flutter_app/src/core/widgets/app_text_fields.dart';

class AppSearchBar extends ConsumerStatefulWidget {
  const AppSearchBar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AppSearchBarState();
}

class _AppSearchBarState extends ConsumerState<AppSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //search text box
        Container(
            width: 200.w,
            height: 35.h,
            decoration: appBoxShadow(
                color: AppColors.primaryFourthElementText,
                boxBorder:
                    Border.all(color: AppColors.primaryFourthElementText)),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(left: 10.w),
                    child: appImage(imagePath: ImageRes.searchIcon),
                  ),
                ),
                SizedBox(
                  width: 160.w,
                  height: 35.h,
                  child: const AppTextFieldOnly(
                      width: 160,
                      height: 35,
                      hintText: "Tìm sản phẩm của bạn .."),
                )
              ],
            )),
      ],
    );
  }
}
