import 'package:keshoohin_flutter_app/src/core/services/services_export.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'storage_provider.g.dart';

@riverpod
StorageRepository storageRepository(StorageRepositoryRef ref)  =>
    StorageImpl();
