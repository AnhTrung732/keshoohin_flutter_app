import 'package:dio/dio.dart';
import 'package:keshoohin_flutter_app/src/core/services/services_export.dart';
import 'package:keshoohin_flutter_app/src/core/utils/utils_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/infrastructure/datasources/remote_datasources.dart/catalog_remote_datasource.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/infrastructure/model/response/collection_response_model.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/infrastructure/model/response/image_slider_response_model.dart';

class CatalogRemoteDataSourceImpl extends CatalogRemoteDataSource {
  final HttpUtil httpUtil;

  CatalogRemoteDataSourceImpl({required this.httpUtil});
  
  @override
  Future<CollectionResponseModel> getCollection(int id) async {
    final Response response =
        await httpUtil.get(ApiConfig.getIdShowCollection(id).toString());

    if (response.statusCode == 200) {
      //print(response.data);
      return CollectionResponseModel.fromJson(response.data);
    } else {
      throw Exception('Failed to load');
    }
  }

  @override
  Future<List<ImageSliderResponseModel>> getImageSlider() async {
    try {
      final Response response =
          await httpUtil.get(ApiConfig.getAvailableImageSlider().toString());

      if (response.statusCode == 200) {
        // Assuming each item in response.data is a Map<String, dynamic>
        var res = response.data
            .map(
                (item) => ImageSliderResponseModel.fromJson(item))
            .toList()
            .cast<ImageSliderResponseModel>();
        return res;
      } else {
        throw Exception('Failed to load post');
      }
    } catch (e) {
      throw Exception('Error in getImageSlider: $e');
    }
  }
}
