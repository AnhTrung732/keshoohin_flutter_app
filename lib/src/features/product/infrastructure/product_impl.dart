import 'package:dio/dio.dart';
import 'package:keshoohin_flutter_app/src/common/utils/api_config.dart';
import 'package:keshoohin_flutter_app/src/features/product/domain/product/product.dart';
import 'package:keshoohin_flutter_app/src/features/product/infrastructure/product_repository.dart';

class ProductImpl extends ProductRepository {
  final Dio dio;

  ProductImpl({required this.dio});

  @override
  Future<Product> getProduct(int id) async {
    final Response response =
        await dio.get(ApiConfig.getIdShowProduct(id).toString());

    if (response.statusCode == 200) {
      return Product.fromJson(response.data);
    } else {
      throw Exception('Failed to load product by id');
    }
  }

  @override
  Future<ProductList?> getAllProduct() async {
    final Response response =
        await dio.get(ApiConfig.getAllProduct().toString());

    if (response.statusCode == 200) {
      try {
        final productList = ProductList.fromJson(response.data);
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
