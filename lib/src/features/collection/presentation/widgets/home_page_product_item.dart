import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keshoohin_flutter_app/src/common/utils/product_currency_format.dart';
import 'package:keshoohin_flutter_app/src/common/widgets/app_circular_progress_indicator.dart';
import 'package:keshoohin_flutter_app/src/common/widgets/app_shadow.dart';
import 'package:keshoohin_flutter_app/src/common/widgets/text_widgets.dart';
import 'package:keshoohin_flutter_app/src/features/collection/presentation/controller/home_controller.dart';
import 'package:keshoohin_flutter_app/src/features/product/domain/product/product.dart';
import 'package:keshoohin_flutter_app/src/features/product/presentation/controller/product_list_page_controller.dart';

class ProductItemGrid extends ConsumerWidget {
  const ProductItemGrid({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productState = ref.watch(productListControllerProvider);
    final selected = ref.watch(homePageMenuBarSelectorProvider).last;
    bool isVisible = false;
    (selected == 0) || (selected == -1) ? isVisible = true : false;
    return Visibility(
      visible: isVisible,
      child: productState.when(
          data: (data) => GridView.builder(
              physics: const ScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 10, mainAxisExtent: 300),
              itemCount: data!.products!.length,
              itemBuilder: (_, int index) {
                return ProductItemCard(product: data.products![index]);
              }),
          error: (error, stackTrace) => const AppProductGridSkeleton(),
          loading: () => const AppProductGridSkeleton()),
    );
  }
}

class ProductItemCard extends StatelessWidget {
  const ProductItemCard(
      {super.key, required this.product, this.width = 200, this.height = 200});
  final Product product;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    var retailPrice = product.retailPrice ?? product.listPrice;
    var salePercent = (100 - retailPrice / product.listPrice * 100).toInt();
    return Container(
      width: width.w,
      height: height.h,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.w),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: CachedNetworkImage(
              imageUrl: product.images![0].path!,
              errorWidget: (context, url, error) =>
                  appCircularProgressIndicator(),
            ),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            FadeText(text: product.brand!.nameBrand),
            SizedBox(height: 5.h),
            FadeText(text: product.nameProduct),
            SizedBox(height: 5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeText(
                  text: currencyFormat(retailPrice),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                salePercent != 0
                    ? Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: SalePercentBadge(salePercent),
                      )
                    : Container()
              ],
            )
          ]),
        ],
      ),
    );
  }
}

class SalePercentBadge extends StatelessWidget {
  final int percent;
  const SalePercentBadge(this.percent, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 174, 183, 1),
            borderRadius: BorderRadius.circular(5)),
        alignment: Alignment.center,
        child: Text(
          '-$percent%',
          style: const TextStyle(color: Colors.white),
        ));
  }
}
