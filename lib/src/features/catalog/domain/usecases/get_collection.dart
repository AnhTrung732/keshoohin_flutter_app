import 'package:keshoohin_flutter_app/src/core/common_domain/usecase/base_params_usecase.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/domain/collection_domain_export.dart';

class GetCollection implements BaseParamsUseCase<CollectionEntity?, int> {
  final CatalogRepository catalogRepository;

  GetCollection({required this.catalogRepository});

  @override
  Future<CollectionEntity?> call([int? params]) {
    return catalogRepository.getCollection(params!);
  }
}
