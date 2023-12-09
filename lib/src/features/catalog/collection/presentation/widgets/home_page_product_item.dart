import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:keshoohin_flutter_app/src/core/services/services_export.dart';
import 'package:keshoohin_flutter_app/src/core/utils/utils_export.dart';
import 'package:keshoohin_flutter_app/src/core/widgets/widgets_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/collection/presentation/controller/home_controller.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/product/domain/response/product_response_entity.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/product/presentation/controller/product_list_page_controller.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/product/presentation/widgets/product_detail_heading.dart';

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
                return ProductItemCard(
                    product: data.products![index],
                    func: () => context
                            .goNamed(APP_PAGE.product.toName, pathParameters: {
                          'index': data.products![index].idProduct.toString()
                        }));
              }),
          error: (error, stackTrace) => const AppProductGridSkeleton(),
          loading: () => const AppProductGridSkeleton()),
    );
  }
}

class ProductItemCard extends StatelessWidget {
  const ProductItemCard(
      {super.key,
      required this.product,
      this.width = 200,
      this.height = 200,
      this.func});
  final ProductResponseEntity product;
  final double width;
  final double height;
  final void Function()? func;
  @override
  Widget build(BuildContext context) {
    var retailPrice = product.retailPrice ?? product.listPrice;
    var salePercent = (100 - retailPrice / product.listPrice * 100).toInt();
    return GestureDetector(
      onTap: func,
      child: Container(
        width: width.w,
        height: height.h,
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.w),
        ),
        child: Hero(
          tag: "hero_product_image_${product.idProduct}",
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AppCachedNetworkImage(imageUrl: product.images![0].path!),
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
        ),
      ),
    );
  }
}
