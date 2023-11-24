import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keshoohin_flutter_app/src/features/collection/domain/collection_infor.dart';
import 'package:keshoohin_flutter_app/src/features/collection/infrastructure/collection/collection_provider.dart';
import 'package:keshoohin_flutter_app/src/features/collection/infrastructure/collection/collection_repository.dart';
import 'package:keshoohin_flutter_app/src/features/product/domain/product/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'collection.freezed.dart';
part 'collection.g.dart';

@freezed
class Collection with _$Collection {
  factory Collection({
    required CollectionInfor collectionInfor,
    required List<Product> collectionproducts,
  }) = _Collection;

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);
}

@riverpod
class AsyncCollection extends _$AsyncCollection {
  late CollectionRepository collection;

  @override
  FutureOr<Collection> build() async {
    // Load initial todo list from the remote repository
    collection = ref.watch(collectionRepositoryProvider);
    return collection.getCollection(65);
  }
}
