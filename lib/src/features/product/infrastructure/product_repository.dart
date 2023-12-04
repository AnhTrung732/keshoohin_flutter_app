import 'package:keshoohin_flutter_app/src/features/product/domain/product/image.dart';
import 'package:keshoohin_flutter_app/src/features/product/domain/product/product.dart';

abstract class ProductRepository {
  //Future<ProductInfor> _getProductInfor(int id);
  //Future<List<ImageProduct>> _getImages(int id);
  Future<Product> getProduct(int id);
  Future<ProductList?> getAllProduct();
}
