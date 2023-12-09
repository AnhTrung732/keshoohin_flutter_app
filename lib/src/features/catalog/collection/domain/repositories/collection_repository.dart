import 'package:keshoohin_flutter_app/src/features/catalog/collection/domain/entities/collection_entity.dart';

abstract class CollectionRepository {
  Future<CollectionEntity> getCollection(int id);
}
