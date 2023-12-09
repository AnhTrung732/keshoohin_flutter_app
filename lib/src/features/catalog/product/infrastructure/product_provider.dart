import 'package:keshoohin_flutter_app/src/core/core_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/product/infrastructure/product_impl.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/product/infrastructure/product_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_provider.g.dart';

@riverpod
ProductRepository productRepository(ProductRepositoryRef ref) =>
    ProductImpl(httpUtil: ref.watch(httpUtilProvider));
