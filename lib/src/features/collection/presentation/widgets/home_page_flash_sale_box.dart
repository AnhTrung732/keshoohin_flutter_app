import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keshoohin_flutter_app/src/common/utils/app_colors.dart';
import 'package:keshoohin_flutter_app/src/common/utils/app_styles.dart';
import 'package:keshoohin_flutter_app/src/common/widgets/app_shadow.dart';
import 'package:keshoohin_flutter_app/src/common/widgets/text_widgets.dart';
import 'package:keshoohin_flutter_app/src/features/collection/domain/collection.dart';
import 'package:keshoohin_flutter_app/src/features/collection/presentation/controller/home_controller.dart';
import 'package:keshoohin_flutter_app/src/features/collection/presentation/widgets/home_page_product_item.dart';

class AppHomeFlashSaleHeader extends StatefulWidget {
  late int seconds;

  AppHomeFlashSaleHeader(this.seconds, {super.key});

  @override
  State<AppHomeFlashSaleHeader> createState() => _FlashSaleHeaderState();
}

class _FlashSaleHeaderState extends State<AppHomeFlashSaleHeader> {
  late Timer timer;
  int _days = 0;
  int _hours = 0;
  int _mins = 0;
  int _secs = 0;

  void calcCountDown() {
    _days = widget.seconds ~/ 86400;
    _hours = (widget.seconds - _days * 86400) ~/ 3600;
    _mins = (widget.seconds - _days * 86400 - _hours * 3600) ~/ 60;
    _secs = (widget.seconds - _days * 86400 - _hours * 3600 - _mins * 60);
    widget.seconds--;
  }

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        calcCountDown();
        setState(() {});
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  String convertToTwoDigits(int number) {
    return number < 10 ? '0$number' : number.toString();
  }

  Widget _buildTimeUnit(int time, String unit) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border(
          left: unit != 'days'
              ? BorderSide(color: Colors.grey.shade300)
              : const BorderSide(color: AppColors.primaryBackground),
        ),
      ),
      child: Row(
        children: [
          Text14Normal(
            text: convertToTwoDigits(time),
            color: AppColors.primaryThirdElement,
            fontWeight: FontWeight.bold,
          ),
          Text14Normal(
            text: unit.tr(),
            color: AppColors.primaryThirdElement,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Image.network(
              "https://image.hsv-tech.io/800x0/tfs/common/f5c3203e-ccaa-4394-8a0e-d148ee18cfc0.webp",
              width: 150,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.h),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.w),
              ),
              child: Row(
                children: [
                  _buildTimeUnit(_days, 'days'),
                  _buildTimeUnit(_hours, 'hours'),
                  _buildTimeUnit(_mins, 'mins'),
                  _buildTimeUnit(_secs, 'secs'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class AppHomeFlashSaleBox extends ConsumerWidget {
  final int seconds;
  final ScrollController _controller = ScrollController();

  AppHomeFlashSaleBox(this.seconds, {super.key});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncCollection = ref.watch(asyncCollectionProvider);
    final selected = ref.watch(homePageMenuBarSelectorProvider).last;
    bool isVisible = false;
    (selected == 1) || (selected == -1) ? isVisible = true : false;
    return Visibility(
      visible: isVisible,
      child: Container(
        margin: EdgeInsets.only(
          top: Theme.of(context).own().defaultMarginBetween.h,
          bottom: Theme.of(context).own().defaultMarginBetween.h,
        ),
        padding: EdgeInsets.all(
          Theme.of(context).own().defaultVerticalPaddingOfScreen.h,
        ),
        decoration: BoxDecoration(
          color: AppColors.primaryElementStatus,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          children: [
            AppHomeFlashSaleHeader(seconds),
            Stack(
              alignment: Alignment.centerRight,
              children: [
                _buildProductList(asyncCollection, context),
                _buildNavigationButtons(context),
              ],
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildProductList(
      AsyncValue<Collection> asyncImageSlider, BuildContext context) {
    return asyncImageSlider.when(
        loading: () => _buildSkeletonList(context),
        error: (error, stack) => _buildSkeletonList(context),
        data: (collection) => SingleChildScrollView(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (var product in collection.collectionproducts)
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: ProductItemCard(
                          product: product,
                          height: MediaQuery.of(context).size.height * 0.4),
                    )
                ],
              ),
            ));
  }

  Widget _buildSkeletonList(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var i = 0; i < 3; i++)
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: const AppProductCardSkeleton(),
            ),
        ],
      ),
    );
  }

  Widget _buildNavigationButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            _controller.animateTo(
              _controller.offset - MediaQuery.of(context).size.width,
              duration: const Duration(seconds: 1),
              curve: Curves.linear,
            );
          },
          icon: const Icon(Icons.chevron_left),
        ),
        IconButton(
          onPressed: () {
            _controller.animateTo(
              _controller.offset + MediaQuery.of(context).size.width,
              duration: const Duration(seconds: 1),
              curve: Curves.linear,
            );
          },
          icon: const Icon(Icons.chevron_right),
        ),
      ],
    );
  }
}
