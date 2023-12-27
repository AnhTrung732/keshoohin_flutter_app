import 'package:keshoohin_flutter_app/src/features/catalog/infrastructure/models/response/collection_response_model.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/infrastructure/models/response/image_slider_response_model.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/infrastructure/models/response/product_response_model.dart';

abstract class CatalogRemoteDataSource {
  Future<CollectionResponseModel> getCollection(int id);
  Future<List<ImageSliderResponseModel>> getImageSlider();
  Future<ProductResponseModel> getProduct(int id);
  Future<ProductListResponseModel> getAllProduct();
}
