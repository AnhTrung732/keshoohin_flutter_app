import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_response_entity.freezed.dart';
part 'image_response_entity.g.dart';

@freezed
class ImageProductResponseEntity with _$ImageProductResponseEntity {
  factory ImageProductResponseEntity({
    @JsonKey(name: 'Path') String? path,
  }) = _ImageProduct;

  factory ImageProductResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$ImageProductResponseEntityFromJson(json);
}
