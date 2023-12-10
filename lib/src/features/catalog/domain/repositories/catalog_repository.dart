import 'package:keshoohin_flutter_app/src/features/catalog/domain/entities/entities_export.dart';

abstract class CatalogRepository {
  Future<CollectionEntity> getCollection(int id);
  Future<List<ImageSliderEntity>> getImageSlider();
}
