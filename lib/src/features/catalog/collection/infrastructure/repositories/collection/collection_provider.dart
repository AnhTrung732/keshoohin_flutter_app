import 'package:keshoohin_flutter_app/src/features/catalog/collection/domain/repositories/collection_repository.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/collection/infrastructure/datasources/remote_datasources.dart/provider/collection_remote_provider.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/collection/infrastructure/repositories/collection/collection_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'collection_provider.g.dart';

@riverpod
CollectionRepository collectionRepository(CollectionRepositoryRef ref) =>
    CollectionImpl(
        collectionRemoteDataSource:
            ref.read(collectionRemoteDataSourceProvider));
