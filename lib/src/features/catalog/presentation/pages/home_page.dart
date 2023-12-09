import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keshoohin_flutter_app/src/core/core_export.dart';
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
    return SafeArea(
      child: Scaffold(
        appBar: apphomeAppBar(),
        body: RefreshIndicator(
          onRefresh: () async {
            // await Future.wait([
            //   Future.delayed(const Duration(milliseconds: 3000)),
            //   ref
            //       .refresh(homeImageSliderProvider.notifier)
            //       .fetchImageSliderList(),
            //   Future.delayed(const Duration(milliseconds: 3000)),
            //   ref.refresh(asyncCollectionProvider.notifier).fetchCollection(65),
            //   Future.delayed(const Duration(milliseconds: 3000)),
            //   ref
            //       .refresh(productListControllerProvider.notifier)
            //       .fetchProductList(),
            // ]);
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: SingleChildScrollView(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppHomeGreeting(),
                SizedBox(height: 20.h),
                appSearchBar(),
                SizedBox(height: 20.h),
                AppHomeBanner(ref: ref),
                const AppHomeMenuBar(),
                AppHomeFlashSaleBox(15100),
                const AppHomeSwitchCardsEvent(),
                const ProductItemGrid(),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
