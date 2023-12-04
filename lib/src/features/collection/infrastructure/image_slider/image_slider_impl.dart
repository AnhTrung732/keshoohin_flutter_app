import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:keshoohin_flutter_app/src/common/utils/api_config.dart';
import 'package:keshoohin_flutter_app/src/features/collection/domain/image_slider.dart';
import 'package:keshoohin_flutter_app/src/features/collection/infrastructure/image_slider/image_slider_repository.dart';

class ImageSliderImpl extends ImageSliderRepository {
  final Dio dio;

  ImageSliderImpl({required this.dio});

  @override
  Future<List<ImageSlider>> getImageSlider() async {
    try {
      final Response response =
          await dio.get(ApiConfig.getAvailableImageSlider().toString());

      if (response.statusCode == 200) {
        // Assuming each item in response.data is a Map<String, dynamic>
        var res = response.data
            .map((item) => ImageSlider.fromJson(item))
            .toList()
            .cast<ImageSlider>();
        return res;
      } else {
        throw Exception('Failed to load post');
      }
    } catch (e) {
      throw Exception('Error in getImageSlider: $e');
    }
  }
}
