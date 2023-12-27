import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keshoohin_flutter_app/src/core/utils/mapper/data_mapper.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/domain/entities/review_entity.dart';

part 'review_response_model.freezed.dart';
part 'review_response_model.g.dart';

@freezed
class ImageReviewResponseModel with _$ImageReviewResponseModel {
  const ImageReviewResponseModel._();
  factory ImageReviewResponseModel({
    required int iDReviewImage,
    required int iDReview,
    required String path,
  }) = _ImageReview;

  factory ImageReviewResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ImageReviewResponseModelFromJson(json);
  @Implements<DataMapper<ImageReviewEntity>>()
  ImageReviewEntity mapToEntity() {
    return ImageReviewEntity(
      idReviewImage: iDReviewImage,
      idReview: iDReview,
      path: path,
    );
  }
}

@freezed
class ReviewResponseModel with _$ReviewResponseModel {
  const ReviewResponseModel._();
  factory ReviewResponseModel({
    @JsonKey(name: 'IDReview') required int iDReview,
    @JsonKey(name: 'IDProduct') required int iDProduct,
    @JsonKey(name: 'IDCus') required int iDCus,
    @JsonKey(name: 'CreatedOn') required String createdOn,
    @JsonKey(name: 'ContentShort') required String contentShort,
    @JsonKey(name: 'ContentLong') required String contentLong,
    @JsonKey(name: 'Rating') required int rating,
    @JsonKey(name: 'IsDeleted') required int isDeleted,
    List<ImageReviewResponseModel>? images,
  }) = _ReviewResponseModel;

  factory ReviewResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewResponseModelFromJson(json);

  @Implements<DataMapper<ReviewEntity>>()
  ReviewEntity mapToEntity() {
    return ReviewEntity(
      idReview: iDReview,
      idProduct: iDProduct,
      idCus: iDCus,
      createdOn: createdOn,
      contentShort: contentShort,
      contentLong: contentLong,
      rating: rating,
      isDeleted: isDeleted,
      images: images?.map((image) => image.mapToEntity()).toList(),
    );
  }
}
