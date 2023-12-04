// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:keshoohin_flutter_app/src/features/collection/domain/collection.dart';
// import 'package:keshoohin_flutter_app/src/features/collection/domain/image_slider.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'product_list_page_controller.g.dart';

// // @riverpod
// // class ProductListPageController extends _$ProductListPageController {
// //   late AsyncImageSlider asyncImageSlider;
// //   late AsyncCollection asyncCollection;

// // }

import 'package:keshoohin_flutter_app/src/features/product/domain/product/product.dart';
import 'package:keshoohin_flutter_app/src/features/product/infrastructure/product_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_list_page_controller.g.dart';

@Riverpod(keepAlive: true)
class ProductListController extends _$ProductListController {
  @override
  FutureOr<ProductList?> build() async {
    return fetchProductList();
  }

  Future<ProductList?> fetchProductList() async {
    // Load initial todo list from the remote repository
    return await ref.read(productRepositoryProvider).getAllProduct();
  }
}
