import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keshoohin_flutter_app/src/core/utils/mapper/data_mapper.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/collection/domain/entities/image_slider_entity.dart';

part 'image_slider_response_model.freezed.dart';
part 'image_slider_response_model.g.dart';

@freezed
class ImageSliderResponseModel with _$ImageSliderResponseModel {
  const ImageSliderResponseModel._();
  const factory ImageSliderResponseModel({
    @JsonKey(name: 'IDImage') int? idImage,
    @JsonKey(name: 'StartOn') String? startOn,
    @JsonKey(name: 'EndOn') String? endOn,
    @JsonKey(name: 'Path') String? path,
    @JsonKey(name: 'Route') String? route,
    @JsonKey(name: 'IsDeleted') int? isDeleted,
    @JsonKey(name: 'CreatedOn') String? createdOn,
  }) = _ImageSliderResponseModel;

  factory ImageSliderResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ImageSliderResponseModelFromJson(json);
  @Implements<DataMapper<ImageSliderEntity>>()
  ImageSliderEntity mapToEntity() {
    return ImageSliderEntity(idImage: idImage, path: path ?? '');
  }
}
