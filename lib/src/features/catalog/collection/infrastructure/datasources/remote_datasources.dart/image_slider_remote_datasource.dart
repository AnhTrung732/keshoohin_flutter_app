import 'package:keshoohin_flutter_app/src/features/catalog/collection/infrastructure/model/response/image_slider_response_model.dart';

abstract class ImageSliderRemoteDataSource {
  // Future<CollectionInfor> _getCollectionInfor(int id);
  // Future<List<Product>> _getCollectionProduct(int id);
  Future<ImageSliderResponseModel> getImageSlider();
}
