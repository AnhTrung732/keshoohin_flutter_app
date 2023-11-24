import 'package:freezed_annotation/freezed_annotation.dart';
import 'image_review.dart';

part 'review.freezed.dart';
part 'review.g.dart';


@freezed
class Review with _$Review {
  factory Review({
    required int iDReview,
    required int iDProduct,
    required int iDCus,
    required String createdOn,
    required String contentShort,
    required String contentLong,
    required int rating,
    required int isDeleted,
    List<ImageReview>? images,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
