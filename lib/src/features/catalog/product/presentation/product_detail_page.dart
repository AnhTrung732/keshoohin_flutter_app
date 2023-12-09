import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keshoohin_flutter_app/src/core/widgets/widgets_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/collection/presentation/widgets/home_page_widgets.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/product/domain/response/product_response_entity.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/product/presentation/controller/product_detail_controller.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/product/presentation/widgets/product_detail_heading.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/product/presentation/widgets/product_detail_image_slider.dart';

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
        appBar: apphomeAppBar(isVisible: false),
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
  final ProductResponseEntity product;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print(product.brand!);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Column(children: [
        Expanded(
            child: SizedBox(
                height: 500,
                child: ListView(children: [
                  Hero(
                      tag: "hero_product_image_${product.idProduct}",
                      child: ProductDetailImagesSlider(
                          idThisProduct: product.idProduct,
                          imageList: product.images!)),
                  ProductDetailHeading(
                    listPrice : product.listPrice,
                    nameProduct: product.nameProduct,
                    nameBrand: product.brand!.nameBrand,
                    idBrand: product.idBrand,
                    brandCollection: product
                        .brand!.idCollection, //product.brand!.idCollection!
                    categoryName: product.nameProduct,
                    retailPrice : product.retailPrice,
                  )
                ])))
      ]),
    );
  }
}
