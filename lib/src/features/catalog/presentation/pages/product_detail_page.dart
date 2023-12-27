import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keshoohin_flutter_app/src/core/widgets/app_split_content.dart';
import 'package:keshoohin_flutter_app/src/core/widgets/controller/app_controller.dart';
import 'package:keshoohin_flutter_app/src/core/widgets/widgets_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/domain/entities/product_entity.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/presentation/controller/product_detail_controller.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/presentation/widgets/product_detail_description.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/presentation/widgets/product_detail_heading.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/presentation/widgets/product_detail_image_slider.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/presentation/widgets/product_detail_page_relevant.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/presentation/widgets/product_detail_top_tab_bar.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class ProductDetailPage extends ConsumerStatefulWidget {
  const ProductDetailPage({required this.idProduct, super.key});
  final int idProduct;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProductDetailPageState();
}

class _ProductDetailPageState extends ConsumerState<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    final int idProduct = widget.idProduct;

    var state = ref.watch(productDetailControllerProvider(index: idProduct));
    return SafeArea(
      child: Scaffold(
        appBar: const ProductAppBar(),
        body: state.when(
            data: (data) => ProductDetailContent(product: data),
            error: (error, traceStack) => const AppProductProgressIndicator(),
            loading: () => const AppProductProgressIndicator()),
      ),
    );
  }
}

class ProductDetailContent extends ConsumerWidget {
  const ProductDetailContent({required this.product, super.key});
  final ProductEntity product;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = ref.watch(productPageItemScrollControllerProvider);
    final scrollListener = ref.watch(productPageScrollListenerProvider);
    return Stack(
      children: <Widget>[
        Column(children: [
          Expanded(
              child: SizedBox(
                  height: 500,
                  child: NotificationListener<ScrollNotification>(
                    onNotification: (ScrollNotification notification) {
                      if (notification is ScrollUpdateNotification) {
                        // Determine scroll direction
                        if (notification.scrollDelta! > 0) {
                          ref
                              .watch(productScrollDirectionControllerProvider
                                  .notifier)
                              .updateScrollDirection(ScrollDirection.up);
                          // print("UPPP");
                        } else if (notification.scrollDelta! < 0) {
                          ref
                              .watch(productScrollDirectionControllerProvider
                                  .notifier)
                              .updateScrollDirection(ScrollDirection.down);
                          // print("DOWNNN");
                        }
                      } else {
                        ref
                            .watch(productScrollDirectionControllerProvider
                                .notifier)
                            .updateScrollDirection(ScrollDirection.static);
                        // print("STATICCC");
                      }
                      return false;
                    },
                    child: ScrollablePositionedList.builder(
                        itemCount: 3,
                        itemScrollController: scrollController,
                        itemPositionsListener: scrollListener,
                        itemBuilder: (context, index) {
                          switch (index) {
                            case 0:
                              return Column(children: [
                                ProductDetailImagesSlider(
                                    idThisProduct: product.idProduct,
                                    imageList: product.images!),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 25.w),
                                  child: ProductDetailHeading(
                                      listPrice: product.listPrice,
                                      nameProduct: product.nameProduct,
                                      nameBrand: product.brand!.nameBrand,
                                      idBrand: product.idBrand,
                                      brandCollection: product.brand!
                                          .idCollection, //product.brand!.idCollection!
                                      categoryName: product.nameProduct,
                                      retailPrice: product.retailPrice,
                                      rating: product.rating,
                                      totalPurchaseQuantity:
                                          product.totalPurchaseQuantity),
                                ),
                                const AppSplitContent(),
                              ]);
                            case 1:
                              return Column(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 25.w),
                                      child: ProductDetailDiscription(
                                        description: product.description,
                                      )),
                                  const AppSplitContent(),
                                ],
                              );
                            case 2:
                              return Column(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 25.w),
                                    child: const ProductDetailRelevant(),
                                  ),
                                ],
                              );
                            default:
                              return const SizedBox.shrink();
                          }
                        }),
                  )))
        ]),
        const Align(
          alignment: Alignment.topCenter,
          child: ProductDetailTopTabBar(),
        ),
      ],
    );
  }
}
