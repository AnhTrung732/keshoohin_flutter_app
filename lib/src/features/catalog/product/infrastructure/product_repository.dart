

import 'package:keshoohin_flutter_app/src/features/catalog/product/domain/response/product_response_entity.dart';

abstract class ProductRepository {
  //Future<ProductInfor> _getProductInfor(int id);
  //Future<List<ImageProduct>> _getImages(int id);
  Future<ProductResponseEntity> getProduct(int id);
  Future<ProductListResponseEntity?> getAllProduct();
}
