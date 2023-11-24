import 'package:keshoohin_flutter_app/src/features/collection/domain/image_slider.dart';

abstract class ImageSliderRepository {
  Future<List<ImageSlider>> getImageSlider();
}
