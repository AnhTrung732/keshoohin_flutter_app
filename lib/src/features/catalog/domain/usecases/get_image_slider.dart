import 'package:keshoohin_flutter_app/src/core/common_domain/usecase/base_params_usecase.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/domain/collection_domain_export.dart';


class GetImageSlider
    implements BaseParamsUseCase<List<ImageSliderEntity>?, void> {
  final CatalogRepository catalogRepository;

  GetImageSlider({required this.catalogRepository});

  @override
  Future<List<ImageSliderEntity>?> call([void params]) {
    return catalogRepository.getImageSlider();
  }
}
