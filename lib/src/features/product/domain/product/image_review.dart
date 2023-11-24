import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_review.freezed.dart';
part 'image_review.g.dart';


@freezed
class ImageReview with _$ImageReview {
  factory ImageReview({
    required int iDReviewImage,
    required int iDReview,
    required String path,
  }) = _ImageReview;

  factory ImageReview.fromJson(Map<String, dynamic> json) =>
      _$ImageReviewFromJson(json);
}
