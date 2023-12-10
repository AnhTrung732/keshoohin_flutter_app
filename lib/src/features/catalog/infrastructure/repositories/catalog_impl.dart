import 'package:keshoohin_flutter_app/src/features/catalog/domain/entities/entities_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/domain/repositories/catalog_repository.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/infrastructure/datasources/remote_datasources.dart/catalog_remote_datasource.dart';

class CatalogImpl extends CatalogRepository {
  final CatalogRemoteDataSource catalogRemoteDataSource;

  CatalogImpl({required this.catalogRemoteDataSource});

  @override
  Future<CollectionEntity> getCollection(int id) async {
    return await catalogRemoteDataSource
        .getCollection(id)
        .then((value) => value.mapToEntity());
  }

  @override
  Future<List<ImageSliderEntity>> getImageSlider() async {
    return await catalogRemoteDataSource.getImageSlider().then((value) =>
        value
            .map((item) => item.mapToEntity())
            .toList()
            .cast<ImageSliderEntity>());
  }
}
