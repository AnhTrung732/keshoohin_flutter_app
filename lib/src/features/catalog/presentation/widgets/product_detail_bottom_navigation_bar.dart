import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keshoohin_flutter_app/src/core/core_export.dart';

class ProductBottomNaviagtionBar extends ConsumerWidget {
  const ProductBottomNaviagtionBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 1.sw,
      height: 60.h,
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            child: const FittedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.messenger_outline_rounded), // icon
                  Text14Normal(
                    text: "Trao đổi",
                    color: AppColors.primaryText,
                  ), // text
                ],
              ),
            ),
          ),
          GestureDetector(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
                decoration: appBoxShadow(
                    color: AppColors.primaryBackground,
                    radius: 5,
                    boxBorder: Border.all(color: AppColors.primaryElement)),
                child: const Text16Normal(
                  text: "Thêm giỏ hàng",
                  color: AppColors.primaryThirdElement,
                )),
          ),
          GestureDetector(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
                decoration: appBoxShadow(
                  radius: 5,
                ),
                child: const Text16Normal(
                  text: "Mua ngay",
                  color: AppColors.primaryBackground,
                )),
          ),
        ],
      ),
    );
  }
}
