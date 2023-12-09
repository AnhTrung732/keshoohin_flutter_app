import 'package:dio/dio.dart';
import 'package:keshoohin_flutter_app/src/core/core_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/product/domain/response/product_response_entity.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/product/infrastructure/product_repository.dart';

class ProductImpl extends ProductRepository {
  final HttpUtil httpUtil;

  ProductImpl({required this.httpUtil});

  @override
  Future<ProductResponseEntity> getProduct(int id) async {
    final Response response =
        await httpUtil.get(ApiConfig.getIdShowProduct(id).toString());

    if (response.statusCode == 200) {
      return ProductResponseEntity.fromJson(response.data);
    } else {
      throw Exception('Failed to load product by id');
    }
  }

  @override
  Future<ProductListResponseEntity?> getAllProduct() async {
    final Response response =
        await httpUtil.get(ApiConfig.getAllProduct().toString());

    if (response.statusCode == 200) {
      try {
        final productList = ProductListResponseEntity.fromJson(response.data);
        //print("Conversion successful: $productList");
        return productList;
      } catch (e) {
        print("Error converting response: $e");
        throw Exception('Failed to convert response to ProductList');
      }
    }
    return null;
  }

  // Future<ImagesProduct> _getImages(int id) async {
  //   final Response response =
  //       await dio.get(ApiConfig.getIndexProductImage(id).toString());

  //   if (response.statusCode == 200) {
  //     print(response.data);
  //     // Convert the list of paths to a list of ImageProduct instances
  //     return ImagesProduct.fromJson(response.data);
  //   } else {
  //     throw Exception('Failed to load');
  //   }
  // }
}
