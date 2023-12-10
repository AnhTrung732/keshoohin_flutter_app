// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
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
              ImageReviewResponseEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
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
