import 'package:keshoohin_flutter_app/src/core/services/services_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/infrastructure/datasources/remote_datasources.dart/catalog_remote_datasource.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/infrastructure/datasources/remote_datasources.dart/catalog_remote_datasource_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'catalog_remote_provider.g.dart';

@riverpod
CatalogRemoteDataSource catalogRemoteDataSource(
        CatalogRemoteDataSourceRef ref) =>
    CatalogRemoteDataSourceImpl(httpUtil: ref.watch(httpUtilProvider));



