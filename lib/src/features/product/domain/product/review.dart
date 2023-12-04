import 'package:freezed_annotation/freezed_annotation.dart';
import 'image_review.dart';

part 'review.freezed.dart';
part 'review.g.dart';


@freezed
class Review with _$Review {
  factory Review({
    @JsonKey(name: 'IDReview') required int iDReview,
    @JsonKey(name: 'IDProduct') required int iDProduct,
    @JsonKey(name: 'IDCus') required int iDCus,
    @JsonKey(name: 'CreatedOn') required String createdOn,
    @JsonKey(name: 'ContentShort') required String contentShort,
    @JsonKey(name: 'ContentLong') required String contentLong,
    @JsonKey(name: 'Rating') required int rating,
    @JsonKey(name: 'IsDeleted') required int isDeleted,
    List<ImageReview>? images,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
