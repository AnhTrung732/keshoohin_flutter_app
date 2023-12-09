import 'package:keshoohin_flutter_app/src/features/catalog/collection/domain/entities/collection_entity.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/collection/domain/repositories/collection_repository.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/collection/infrastructure/datasources/remote_datasources.dart/collection_remote_datasource.dart';

class CollectionImpl extends CollectionRepository {
  final CollectionRemoteDataSource collectionRemoteDataSource;

  CollectionImpl({required this.collectionRemoteDataSource});

  @override
  Future<CollectionEntity> getCollection(int id) async {
    return await collectionRemoteDataSource
        .getCollection(id)
        .then((value) => value.mapToEntity());
  }
}
