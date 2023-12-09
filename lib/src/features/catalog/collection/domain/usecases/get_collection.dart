import 'package:keshoohin_flutter_app/src/core/common_domain/usecase/base_params_usecase.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/collection/domain/entities/collection_entity.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/collection/domain/repositories/collection_repository.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/collection/infrastructure/repositories/collection/collection_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_collection.g.dart';

@riverpod
GetCollection getCollection(GetCollectionRef ref) =>
    GetCollection(collectionRepository: ref.read(collectionRepositoryProvider));

class GetCollection implements BaseParamsUseCase<CollectionEntity?, int> {
  final CollectionRepository collectionRepository;

  GetCollection({required this.collectionRepository});

  @override
  Future<CollectionEntity?> call([int? params]) {
    return collectionRepository.getCollection(params!);
  }
}
