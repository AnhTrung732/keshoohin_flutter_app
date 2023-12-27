import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keshoohin_flutter_app/src/core/core_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/presentation/controller/product_detail_controller.dart';

class ProductDetailTopTabBar extends ConsumerStatefulWidget {
  const ProductDetailTopTabBar({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProductDetailTopTabBarState();
}

class _ProductDetailTopTabBarState extends ConsumerState<ProductDetailTopTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(productPageScrollListenerProvider.notifier).listenToItem();
    _tabController.index = ref.watch(productTabBarIndexProvider);
    ScrollDirection direction =
        ref.watch(productScrollDirectionControllerProvider);
    bool isAnimate = (direction == ScrollDirection.up) ||
        (direction == ScrollDirection.static);
    return BounceInDown(
      animate: isAnimate,
      child: Container(
        decoration: appBoxShadow(
            isGradient: false, color: Colors.transparent.withOpacity(0.01)),
        child: TabBar(
          controller: _tabController,
          indicatorWeight: 0.75,
          tabAlignment: TabAlignment.center,
          isScrollable: true,
          indicatorPadding: const EdgeInsets.symmetric(horizontal: 10),
          indicatorSize: TabBarIndicatorSize.label,
          labelColor: AppColors.primarySecondElement,
          unselectedLabelColor: AppColors.primaryFifthElement,
          indicatorColor: AppColors.primaryThirdElement,
          labelStyle: const TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 12,
              fontWeight: FontWeight.normal),
          tabs: const [
            Tab(
              text: 'Giới thiệu',
            ),
            Tab(
              text: 'Mô tả',
            ),
            Tab(
              text: 'Sản phẩm liên quan',
            ),
          ],
          onTap: (index) async {
            switch (index) {
              case 0:
                await ref
                    .read(productPageItemScrollControllerProvider.notifier)
                    .animateItem(0);
                break;
              case 1:
                await ref
                    .read(productPageItemScrollControllerProvider.notifier)
                    .animateItem(1);
                break;
              case 2:
                await ref
                    .read(productPageItemScrollControllerProvider.notifier)
                    .animateItem(2);
                break;
            }
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
