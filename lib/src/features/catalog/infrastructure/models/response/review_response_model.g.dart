// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageReviewImpl _$$ImageReviewImplFromJson(Map<String, dynamic> json) =>
    _$ImageReviewImpl(
      iDReviewImage: json['iDReviewImage'] as int,
      iDReview: json['iDReview'] as int,
      path: json['path'] as String,
    );

Map<String, dynamic> _$$ImageReviewImplToJson(_$ImageReviewImpl instance) =>
    <String, dynamic>{
      'iDReviewImage': instance.iDReviewImage,
      'iDReview': instance.iDReview,
      'path': instance.path,
    };

_$ReviewResponseModelImpl _$$ReviewResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReviewResponseModelImpl(
      iDReview: json['IDReview'] as int,
      iDProduct: json['IDProduct'] as int,
      iDCus: json['IDCus'] as int,
      createdOn: json['CreatedOn'] as String,
      contentShort: json['ContentShort'] as String,
      contentLong: json['ContentLong'] as String,
      rating: json['Rating'] as int,
      isDeleted: json['IsDeleted'] as int,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) =>
              ImageReviewResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ReviewResponseModelImplToJson(
        _$ReviewResponseModelImpl instance) =>
    <String, dynamic>{
      'IDReview': instance.iDReview,
      'IDProduct': instance.iDProduct,
      'IDCus': instance.iDCus,
      'CreatedOn': instance.createdOn,
      'ContentShort': instance.contentShort,
      'ContentLong': instance.contentLong,
      'Rating': instance.rating,
      'IsDeleted': instance.isDeleted,
      'images': instance.images,
    };
