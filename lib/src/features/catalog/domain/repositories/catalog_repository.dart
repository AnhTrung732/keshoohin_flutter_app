import 'package:keshoohin_flutter_app/src/features/catalog/domain/entities/entities_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/domain/entities/product_entity.dart';

abstract class CatalogRepository {
  Future<CollectionEntity> getCollection(int id);
  Future<List<ImageSliderEntity>> getImageSlider();
  Future<ProductEntity> getProduct(int id);
  Future<List<ProductEntity>> getAllProduct();
}
