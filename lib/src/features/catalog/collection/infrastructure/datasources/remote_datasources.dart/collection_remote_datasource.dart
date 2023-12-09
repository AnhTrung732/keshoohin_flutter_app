import 'package:keshoohin_flutter_app/src/features/catalog/collection/infrastructure/model/response/collection_response_model.dart';

abstract class CollectionRemoteDataSource {
  // Future<CollectionInfor> _getCollectionInfor(int id);
  // Future<List<Product>> _getCollectionProduct(int id);
  Future<CollectionResponseModel> getCollection(int id);
}
