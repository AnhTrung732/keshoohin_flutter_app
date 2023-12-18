// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageProductResponseModelImpl _$$ImageProductResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ImageProductResponseModelImpl(
      path: json['Path'] as String?,
    );

Map<String, dynamic> _$$ImageProductResponseModelImplToJson(
        _$ImageProductResponseModelImpl instance) =>
    <String, dynamic>{
      'Path': instance.path,
    };

_$ProductResponseModelImpl _$$ProductResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductResponseModelImpl(
      idProduct: json['IDProduct'] as int,
      nameProduct: json['NameProduct'] as String,
      idBrand: json['IDBrand'] as int,
      description: json['Description'] as String?,
      createdOn: json['CreatedOn'] as String,
      isDeleted: json['IsDeleted'] as int,
      stock: json['Stock'] as int,
      totalPurchaseQuantity: json['TotalPurchaseQuantity'] as int?,
      mass: json['Mass'] as int?,
      unitsOfMass: json['UnitsOfMass'] as String?,
      units: json['Units'] as String?,
      applyTaxes: json['ApplyTaxes'] as int?,
      statusSale: json['StatusSale'] as int?,
      idTag: json['IDTag'] as int,
      idType: json['IDType'] as int,
      listPrice: json['ListPrice'] as int,
      retailPrice: json['RetailPrice'] as int?,
      brand: json['Brand'] == null
          ? null
          : BrandResponseModel.fromJson(json['Brand'] as Map<String, dynamic>),
      images: (json['Images'] as List<dynamic>?)
          ?.map((e) =>
              ImageProductResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      rating: json['Rating'],
      reviews: (json['Reviews'] as List<dynamic>?)
          ?.map((e) => ReviewResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductResponseModelImplToJson(
        _$ProductResponseModelImpl instance) =>
    <String, dynamic>{
      'IDProduct': instance.idProduct,
      'NameProduct': instance.nameProduct,
      'IDBrand': instance.idBrand,
      'Description': instance.description,
      'CreatedOn': instance.createdOn,
      'IsDeleted': instance.isDeleted,
      'Stock': instance.stock,
      'TotalPurchaseQuantity': instance.totalPurchaseQuantity,
      'Mass': instance.mass,
      'UnitsOfMass': instance.unitsOfMass,
      'Units': instance.units,
      'ApplyTaxes': instance.applyTaxes,
      'StatusSale': instance.statusSale,
      'IDTag': instance.idTag,
      'IDType': instance.idType,
      'ListPrice': instance.listPrice,
      'RetailPrice': instance.retailPrice,
      'Brand': instance.brand,
      'Images': instance.images,
      'Rating': instance.rating,
      'Reviews': instance.reviews,
    };

_$ProductListResponseModelImpl _$$ProductListResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductListResponseModelImpl(
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductListResponseModelImplToJson(
        _$ProductListResponseModelImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
    };
