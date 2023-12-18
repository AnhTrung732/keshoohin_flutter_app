import 'package:keshoohin_flutter_app/src/core/services/services_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/domain/collection_domain_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/domain/usecases/get_product.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/infrastructure/datasources/remote_datasources.dart/catalog_remote_datasource.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/infrastructure/datasources/remote_datasources.dart/catalog_remote_datasource_impl.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/infrastructure/repositories/catalog_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'di_cataglog.g.dart';

//Data sources
@riverpod
CatalogRemoteDataSource catalogRemoteDataSource(
        CatalogRemoteDataSourceRef ref) =>
    CatalogRemoteDataSourceImpl(httpUtil: ref.watch(httpUtilProvider));

// Data repositories
@riverpod
CatalogRepository catalogRepository(CatalogRepositoryRef ref) => CatalogImpl(
    catalogRemoteDataSource: ref.watch(catalogRemoteDataSourceProvider));

// Use case
@riverpod
GetCollection getCollection(GetCollectionRef ref) =>
    GetCollection(catalogRepository: ref.watch(catalogRepositoryProvider));

@riverpod
GetImageSlider getImageSlider(GetImageSliderRef ref) =>
    GetImageSlider(catalogRepository: ref.watch(catalogRepositoryProvider));

@riverpod
GetProduct getProduct(GetProductRef ref) =>
    GetProduct(catalogRepository: ref.watch(catalogRepositoryProvider));

@riverpod
GetAllProduct getAllProduct(GetAllProductRef ref) =>
    GetAllProduct(catalogRepository: ref.watch(catalogRepositoryProvider));
