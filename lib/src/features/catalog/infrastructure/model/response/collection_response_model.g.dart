// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectionResponseModelImpl _$$CollectionResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CollectionResponseModelImpl(
      idCollection: json['IDCollection'] as int,
      nameCollection: json['NameCollection'] as String,
      routePath: json['RoutePath'] as String?,
      createdOn: json['CreatedOn'] as String,
      description: json['Description'] as String?,
      logoImagePath: json['LogoImagePath'] as String?,
      wallPaperPath: json['WallPaperPath'] as String?,
      startOn: json['StartOn'] as String,
      endOn: json['EndOn'] as String,
      coverImagePath: json['CoverImagePath'] as String?,
      collectionproducts: (json['Products'] as List<dynamic>?)
          ?.map(
              (e) => ProductResponseEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CollectionResponseModelImplToJson(
        _$CollectionResponseModelImpl instance) =>
    <String, dynamic>{
      'IDCollection': instance.idCollection,
      'NameCollection': instance.nameCollection,
      'RoutePath': instance.routePath,
      'CreatedOn': instance.createdOn,
      'Description': instance.description,
      'LogoImagePath': instance.logoImagePath,
      'WallPaperPath': instance.wallPaperPath,
      'StartOn': instance.startOn,
      'EndOn': instance.endOn,
      'CoverImagePath': instance.coverImagePath,
      'Products': instance.collectionproducts,
    };
