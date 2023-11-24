import 'package:dio/dio.dart';
import 'package:keshoohin_flutter_app/src/features/product/domain/product/image.dart';
import 'package:keshoohin_flutter_app/src/features/product/domain/product/product.dart';
import 'package:keshoohin_flutter_app/src/features/product/infrastructure/product_repository.dart';
import 'package:keshoohin_flutter_app/src/utils/constants/api_config.dart';

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
      throw Exception('Failed to load');
    }
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
