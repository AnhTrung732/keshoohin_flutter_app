import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:keshoohin_flutter_app/src/core/services/services_export.dart';
import 'package:keshoohin_flutter_app/src/core/utils/utils_export.dart';
import 'package:keshoohin_flutter_app/src/core/widgets/widgets_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/domain/entities/product_entity.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/presentation/controller/product_list_page_controller.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/presentation/widgets/product_detail_heading.dart';

class ProductItemGrid extends ConsumerWidget {
  const ProductItemGrid({required this.isVisible, super.key});
  final bool isVisible;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productState = ref.watch(productListControllerProvider);

    return Visibility(
      visible: isVisible,
      child: productState.when(
          data: (data) => GridView.builder(
              physics: const ScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 10, mainAxisExtent: 300),
              itemCount: data.length,
              itemBuilder: (_, int index) {
                return ProductItemCard(
                    product: data[index],
                    func: () => context.goNamed(APP_PAGE.product.toName,
                            pathParameters: {
                              'index': data[index].idProduct.toString()
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
  final ProductEntity product;
  final double width;
  final double height;
  final void Function()? func;
  @override
  Widget build(BuildContext context) {
    var salePercent = calcSalePercent(
        retailPrice: product.retailPrice, listPrice: product.listPrice);
    return GestureDetector(
      onTap: func,
      child: Container(
        width: width.w,
        height: height.h,
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.w),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AppCachedNetworkImage(imageUrl: product.images![0].path!),
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              FadeText(text: product.brand!.nameBrand),
              SizedBox(height: 5.h),
              FadeText(text: product.nameProduct),
              SizedBox(height: 5.h),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadeText(
                    text: currencyFormat(product.retailPrice),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: 5.h),
                  salePercent != 0
                      ? Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: SalePercentBadge(
                            salePercent,
                            textColor: AppColors.primaryElementText,
                            backGroundColor: AppColors.primaryElement,
                          ),
                        )
                      : Container()
                ],
              )
            ]),
          ],
        ),
      ),
    );
  }
}
