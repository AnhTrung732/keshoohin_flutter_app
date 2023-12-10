import 'package:keshoohin_flutter_app/src/features/catalog/domain/usecases/usecases_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/infrastructure/repositories/provider/catalog_repositories_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'catalog_usescases_provider.g.dart';

@riverpod
GetCollection getCollection(GetCollectionRef ref) =>
    GetCollection(catalogRepository: ref.watch(catalogRepositoryProvider));

@riverpod
GetImageSlider getImageSlider(GetImageSliderRef ref) =>
    GetImageSlider(catalogRepository: ref.watch(catalogRepositoryProvider));
