// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
      iDReview: json['iDReview'] as int,
      iDProduct: json['iDProduct'] as int,
      iDCus: json['iDCus'] as int,
      createdOn: json['createdOn'] as String,
      contentShort: json['contentShort'] as String,
      contentLong: json['contentLong'] as String,
      rating: json['rating'] as int,
      isDeleted: json['isDeleted'] as int,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageReview.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
    <String, dynamic>{
      'iDReview': instance.iDReview,
      'iDProduct': instance.iDProduct,
      'iDCus': instance.iDCus,
      'createdOn': instance.createdOn,
      'contentShort': instance.contentShort,
      'contentLong': instance.contentLong,
      'rating': instance.rating,
      'isDeleted': instance.isDeleted,
      'images': instance.images,
    };
