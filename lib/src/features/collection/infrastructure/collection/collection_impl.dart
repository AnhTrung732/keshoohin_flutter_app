import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:keshoohin_flutter_app/src/common/utils/api_config.dart';
import 'package:keshoohin_flutter_app/src/features/collection/domain/collection.dart';
import 'package:keshoohin_flutter_app/src/features/collection/domain/collection_infor.dart';
import 'package:keshoohin_flutter_app/src/features/collection/infrastructure/collection/collection_repository.dart';
import 'package:keshoohin_flutter_app/src/features/product/domain/product/product.dart';
import 'package:keshoohin_flutter_app/src/features/product/infrastructure/product_repository.dart';

class CollectionImpl extends CollectionRepository {
  final Dio dio;
  final ProductRepository productRepository;

  CollectionImpl({required this.dio, required this.productRepository});

  Future<CollectionInfor> _getCollectionInfor(int id) async {
    final Response response =
        await dio.get(ApiConfig.getIdShowCollection(id).toString());

    if (response.statusCode == 200) {
      //print(response.data);
      return CollectionInfor.fromJson(response.data);
    } else {
      throw Exception('Failed to load');
    }
  }

  Future<List<Product>> _getCollectionProduct(int id) async {
    try {
      final Response response =
          await dio.get(ApiConfig.getIdShowProductCollection(id).toString());

      if (response.statusCode == 200) {
        List<dynamic> productList = response.data[0]['Product'];
        List<Product> products = [];
        for (var item in productList) {
          final int productId = item['IDProduct'] as int;
          Product product = await productRepository.getProduct(productId);
          products.add(product);
        }
        return products;
      } else {
        throw Exception('Failed to load post');
      }
    } catch (e) {
      throw Exception('Error in getCollectionProduct: $e');
    }
  }

  @override
  Future<Collection> getCollection(int id) async {
    return Collection(
        collectionInfor: await _getCollectionInfor(id),
        collectionproducts: await _getCollectionProduct(id));
  }
}
