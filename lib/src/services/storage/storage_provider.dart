import 'package:keshoohin_flutter_app/src/services/storage/storage_impl.dart';
import 'package:keshoohin_flutter_app/src/services/storage/storage_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'storage_provider.g.dart';

@riverpod
StorageRepository storageRepository(StorageRepositoryRef ref)  =>
    StorageImpl();
