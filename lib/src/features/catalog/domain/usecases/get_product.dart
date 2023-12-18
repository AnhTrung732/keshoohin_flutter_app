import 'package:keshoohin_flutter_app/src/core/common_domain/usecase/base_params_usecase.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/domain/collection_domain_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/domain/entities/product_entity.dart';

class GetAllProduct implements BaseParamsUseCase<List<ProductEntity>?, void> {
  final CatalogRepository catalogRepository;

  GetAllProduct({required this.catalogRepository});

  @override
  Future<List<ProductEntity>> call([void params]) {
    return catalogRepository.getAllProduct();
  }
}

class GetProduct implements BaseParamsUseCase<ProductEntity, int> {
  final CatalogRepository catalogRepository;

  GetProduct({required this.catalogRepository});

  @override
  Future<ProductEntity> call([int? params]) {
    return catalogRepository.getProduct(params!);
  }
}
