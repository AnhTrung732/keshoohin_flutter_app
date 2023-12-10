import 'package:keshoohin_flutter_app/src/features/catalog/domain/collection_domain_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/infrastructure/model/response/collection_response_model.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/infrastructure/model/response/image_slider_response_model.dart';

abstract class CatalogRemoteDataSource {
  // Future<CollectionInfor> _getCollectionInfor(int id);
  // Future<List<Product>> _getCollectionProduct(int id);
  Future<CollectionResponseModel> getCollection(int id);
  Future<List<ImageSliderResponseModel>> getImageSlider();
}
