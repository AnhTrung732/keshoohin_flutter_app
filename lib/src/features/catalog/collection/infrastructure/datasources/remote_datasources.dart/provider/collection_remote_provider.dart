import 'package:keshoohin_flutter_app/src/core/services/services_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/collection/infrastructure/datasources/remote_datasources.dart/collection_remote_datasource.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/collection/infrastructure/datasources/remote_datasources.dart/collection_remote_datasource_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'collection_remote_provider.g.dart';

@riverpod
CollectionRemoteDataSource collectionRemoteDataSource(
        CollectionRemoteDataSourceRef ref) =>
    CollectionRemoteDataSourceImpl(httpUtil: ref.watch(httpUtilProvider));
