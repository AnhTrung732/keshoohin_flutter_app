import 'package:keshoohin_flutter_app/src/features/catalog/product/domain/response/product_response_entity.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/product/infrastructure/product_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'product_detail_controller.g.dart';

@riverpod
Future<ProductResponseEntity> productDetailController(ProductDetailControllerRef ref, {required int index}) async {
  return await ref.read(productRepositoryProvider).getProduct(index);
}
