import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keshoohin_flutter_app/src/core/widgets/app_split_content.dart';
import 'package:keshoohin_flutter_app/src/core/widgets/widgets_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/domain/entities/product_entity.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/presentation/controller/product_detail_controller.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/presentation/widgets/home_page_product_item.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/presentation/widgets/home_page_widgets.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/presentation/widgets/product_detail_description.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/presentation/widgets/product_detail_heading.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/presentation/widgets/product_detail_image_slider.dart';

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
        appBar: const MyAppBar(isCanPop: true),
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
    return Column(children: [
      Expanded(
          child: SizedBox(
              height: 500,
              child: ListView(children: [
                ProductDetailImagesSlider(
                    idThisProduct: product.idProduct,
                    imageList: product.images!),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: ProductDetailHeading(
                      listPrice: product.listPrice,
                      nameProduct: product.nameProduct,
                      nameBrand: product.brand!.nameBrand,
                      idBrand: product.idBrand,
                      brandCollection: product
                          .brand!.idCollection, //product.brand!.idCollection!
                      categoryName: product.nameProduct,
                      retailPrice: product.retailPrice,
                      rating: product.rating,
                      totalPurchaseQuantity: product.totalPurchaseQuantity),
                ),
                const AppSplitContent(),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    child: ProductDetailDiscription(
                      description: product.description,
                    )),
                const AppSplitContent(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: const ProductItemGrid(isVisible: true),
                ), // ProductDetailRelevant(),
              ])))
    ]);
  }
}
