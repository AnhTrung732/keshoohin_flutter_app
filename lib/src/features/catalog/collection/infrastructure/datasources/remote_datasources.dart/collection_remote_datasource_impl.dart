import 'package:dio/dio.dart';
import 'package:keshoohin_flutter_app/src/core/services/services_export.dart';
import 'package:keshoohin_flutter_app/src/core/utils/utils_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/collection/infrastructure/datasources/remote_datasources.dart/collection_remote_datasource.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/collection/infrastructure/model/response/collection_response_model.dart';




class CollectionRemoteDataSourceImpl extends CollectionRemoteDataSource {
  final HttpUtil httpUtil;

  CollectionRemoteDataSourceImpl({required this.httpUtil});

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
}
