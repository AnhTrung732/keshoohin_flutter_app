import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_review_response_entity.freezed.dart';
part 'image_review_response_entity.g.dart';


@freezed
class ImageReviewResponseEntity with _$ImageReviewResponseEntity {
  factory ImageReviewResponseEntity({
    required int iDReviewImage,
    required int iDReview,
    required String path,
  }) = _ImageReview;

  factory ImageReviewResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$ImageReviewResponseEntityFromJson(json);
}
