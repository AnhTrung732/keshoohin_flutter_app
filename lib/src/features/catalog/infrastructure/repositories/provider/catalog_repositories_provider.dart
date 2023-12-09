import 'package:keshoohin_flutter_app/src/features/catalog/domain/collection_domain_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/infrastructure/datasources/remote_datasources.dart/provider/catalog_remote_provider.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/infrastructure/repositories/catalog_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'catalog_repositories_provider.g.dart';

@riverpod
CatalogRepository catalogRepository(CatalogRepositoryRef ref) => CatalogImpl(
    catalogRemoteDataSource: ref.watch(catalogRemoteDataSourceProvider));
