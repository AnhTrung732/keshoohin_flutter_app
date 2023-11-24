import 'package:keshoohin_flutter_app/src/features/collection/domain/collection.dart';
import 'package:keshoohin_flutter_app/src/features/collection/domain/collection_infor.dart';
import 'package:keshoohin_flutter_app/src/features/product/domain/product/product.dart';

abstract class CollectionRepository {
  // Future<CollectionInfor> _getCollectionInfor(int id);
  // Future<List<Product>> _getCollectionProduct(int id);
  Future<Collection> getCollection(int id);
}
