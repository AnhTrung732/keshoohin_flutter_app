// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrandResponseModelImpl _$$BrandResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BrandResponseModelImpl(
      idBrand: json['IDBrand'] as int,
      nameBrand: json['NameBrand'] as String,
      idCollection: json['IDCollection'] as int?,
      country: json['Country'] as String?,
      createdOn: json['CreatedOn'] as String?,
      isDeleted: json['IsDeleted'] as int?,
      totalProduct: json['TotalProduct'] as int?,
      totalPurchaseQuantity: json['TotalPurchaseQuantity'] as int?,
    );

Map<String, dynamic> _$$BrandResponseModelImplToJson(
        _$BrandResponseModelImpl instance) =>
    <String, dynamic>{
      'IDBrand': instance.idBrand,
      'NameBrand': instance.nameBrand,
      'IDCollection': instance.idCollection,
      'Country': instance.country,
      'CreatedOn': instance.createdOn,
      'IsDeleted': instance.isDeleted,
      'TotalProduct': instance.totalProduct,
      'TotalPurchaseQuantity': instance.totalPurchaseQuantity,
    };
