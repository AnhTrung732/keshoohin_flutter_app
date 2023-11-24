import 'package:keshoohin_flutter_app/src/features/collection/infrastructure/collection/collection_impl.dart';
import 'package:keshoohin_flutter_app/src/features/collection/infrastructure/collection/collection_repository.dart';
import 'package:keshoohin_flutter_app/src/features/product/infrastructure/product_provider.dart';
import 'package:keshoohin_flutter_app/src/services/dio/dio_provider.dart';
import 'package:provider/provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'collection_provider.g.dart';

@riverpod
CollectionRepository collectionRepository(CollectionRepositoryRef ref) =>
    CollectionImpl(
        dio: ref.watch(dioProvider),
        productRepository: ref.watch(productRepositoryProvider));
