import 'package:keshoohin_flutter_app/src/features/catalog/collection/domain/entities/image_slider_entity.dart';

abstract class ImageSliderRepository {
  Future<List<ImageSliderEntity>> getImageSlider();
}
