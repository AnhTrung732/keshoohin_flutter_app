import 'package:freezed_annotation/freezed_annotation.dart';
import 'image_review_response_entity.dart';

part 'review_response_entity.freezed.dart';
part 'review_response_entity.g.dart';


@freezed
class ReviewResponseEntity with _$ReviewResponseEntity {
  factory ReviewResponseEntity({
    @JsonKey(name: 'IDReview') required int iDReview,
    @JsonKey(name: 'IDProduct') required int iDProduct,
    @JsonKey(name: 'IDCus') required int iDCus,
    @JsonKey(name: 'CreatedOn') required String createdOn,
    @JsonKey(name: 'ContentShort') required String contentShort,
    @JsonKey(name: 'ContentLong') required String contentLong,
    @JsonKey(name: 'Rating') required int rating,
    @JsonKey(name: 'IsDeleted') required int isDeleted,
    List<ImageReviewResponseEntity>? images,
  }) = _Review;

  factory ReviewResponseEntity.fromJson(Map<String, dynamic> json) => _$ReviewResponseEntityFromJson(json);
}
