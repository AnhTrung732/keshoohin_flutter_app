import 'package:dio/dio.dart';
import 'package:keshoohin_flutter_app/src/core/services/services_export.dart';
import 'package:keshoohin_flutter_app/src/core/utils/utils_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/collection/domain/entities/image_slider_entity.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/collection/domain/repositories/image_slider_repository.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/collection/infrastructure/model/response/image_slider_response_model.dart';

class ImageSliderImpl extends ImageSliderRepository {
  final HttpUtil httpUtil;

  ImageSliderImpl({required this.httpUtil});

  @override
  Future<List<ImageSliderEntity>> getImageSlider() async {
    try {
      final Response response =
          await httpUtil.get(ApiConfig.getAvailableImageSlider().toString());

      if (response.statusCode == 200) {
        // Assuming each item in response.data is a Map<String, dynamic>
        var res = response.data
            .map(
                (item) => ImageSliderResponseModel.fromJson(item).mapToEntity())
            .toList()
            .cast<ImageSliderEntity>();
        return res;
      } else {
        throw Exception('Failed to load post');
      }
    } catch (e) {
      throw Exception('Error in getImageSlider: $e');
    }
  }
}
