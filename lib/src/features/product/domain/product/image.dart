import 'package:freezed_annotation/freezed_annotation.dart';

part 'image.freezed.dart';
part 'image.g.dart';

@freezed
class ImageProduct with _$ImageProduct {
  factory ImageProduct({
    @JsonKey(name: 'Path') String? path,
  }) = _ImageProduct;

  factory ImageProduct.fromJson(Map<String, dynamic> json) =>
      _$ImageProductFromJson(json);
}
