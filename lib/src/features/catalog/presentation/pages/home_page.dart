import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keshoohin_flutter_app/src/core/core_export.dart';
import 'package:keshoohin_flutter_app/src/core/widgets/app_custom_refresh_indicator.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/presentation/controller/home_controller.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/presentation/controller/product_list_page_controller.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/presentation/widgets/home_page_flash_sale_box.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/presentation/widgets/home_page_product_item.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/presentation/widgets/home_page_switch_cards_event.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/presentation/widgets/home_page_widgets.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final selected = ref.watch(homePageMenuBarSelectorControllerProvider).last;
    Map<String, bool> visibilityMap = checkVisibility(selected: selected);

    return SafeArea(
      child: Scaffold(
        appBar: const HomeAppBar(),
        body: AppLiquidPullToRefresh(
          onRefreshFunc: () async {
            await Future.wait<void>([
              Future.delayed(const Duration(milliseconds: 3000)),
              ref
                  .refresh(homeImageSliderControllerProvider.notifier)
                  .fetchImageSliderList(),
              Future.delayed(const Duration(milliseconds: 3000)),
              ref
                  .refresh(homeCollectionControllerProvider.notifier)
                  .fetchCollection(65),
              Future.delayed(const Duration(milliseconds: 3000)),
              ref
                  .refresh(productListControllerProvider.notifier)
                  .fetchProductList(),
            ]);
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: SingleChildScrollView(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                AppHomeBanner(ref: ref),
                const AppHomeMenuBar(),
                AppHomeFlashSaleBox(15100,
                    isVisible: visibilityMap['isVisibleFlashSale']!),
                AppHomeSwitchCardsEvent(
                    isVisible: visibilityMap['isVisibleSwitchEventCard']!),
                ProductItemGrid(
                    isVisible: visibilityMap['isVisibleProductGrid']!),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
