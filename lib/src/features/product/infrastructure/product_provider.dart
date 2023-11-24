import 'package:keshoohin_flutter_app/src/features/product/domain/product/product.dart';
import 'package:keshoohin_flutter_app/src/features/product/infrastructure/product_impl.dart';
import 'package:keshoohin_flutter_app/src/features/product/infrastructure/product_repository.dart';
import 'package:keshoohin_flutter_app/src/services/dio/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_provider.g.dart';

@riverpod
ProductRepository productRepository(ProductRepositoryRef ref) =>
    ProductImpl(dio: ref.watch(dioProvider));
