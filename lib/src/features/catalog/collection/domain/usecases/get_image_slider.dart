import 'package:keshoohin_flutter_app/src/core/common_domain/usecase/base_params_usecase.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/collection/domain/entities/collection_entity.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/collection/domain/entities/image_slider_entity.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/collection/domain/repositories/image_slider_repository.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/collection/infrastructure/repositories/image_slider/image_slider_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_image_slider.g.dart';

@riverpod
GetImageSlider getImageSlider(GetImageSliderRef ref) => GetImageSlider(
    imageSliderRepository: ref.read(imageSliderRepositoryProvider));

class GetImageSlider
    implements BaseParamsUseCase<List<ImageSliderEntity>?, Null> {
  final ImageSliderRepository imageSliderRepository;

  GetImageSlider({required this.imageSliderRepository});

  @override
  Future<List<ImageSliderEntity>?> call([Null? params]) {
    return imageSliderRepository.getImageSlider();
  }
}
