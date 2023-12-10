import 'package:freezed_annotation/freezed_annotation.dart';
import 'brand_response_entity.dart';
import 'image_response_entity.dart';
import 'review_response_entity.dart';

part 'product_response_entity.freezed.dart';
part 'product_response_entity.g.dart';



@freezed
class ProductResponseEntity with _$ProductResponseEntity {
  factory ProductResponseEntity({
    @JsonKey(name: 'IDProduct') required int idProduct,
    @JsonKey(name: 'NameProduct') required String nameProduct,
    @JsonKey(name: 'IDBrand') required int idBrand,
    @JsonKey(name: 'Description') String? description,
    @JsonKey(name: 'CreatedOn') required String createdOn,
    @JsonKey(name: 'IsDeleted') required int isDeleted,
    @JsonKey(name: 'Stock') required int stock,
    @JsonKey(name: 'TotalPurchaseQuantity') int? totalPurchaseQuantity,
    @JsonKey(name: 'Mass') int? mass,
    @JsonKey(name: 'UnitsOfMass') String? unitsOfMass,
    @JsonKey(name: 'Units') String? units,
    @JsonKey(name: 'ApplyTaxes') int? applyTaxes,
    @JsonKey(name: 'StatusSale') int? statusSale,
    @JsonKey(name: 'IDTag') required int idTag,
    @JsonKey(name: 'IDType') required int idType,
    @JsonKey(name: 'ListPrice') required int listPrice,
    @JsonKey(name: 'RetailPrice') int? retailPrice,
    @JsonKey(name: 'Brand') BrandResponseEnity? brand,
    @JsonKey(name: 'Images') List<ImageProductResponseEntity>? images,
    @JsonKey(name: 'Rating') dynamic rating,
    @JsonKey(name: 'Reviews') List<ReviewResponseEntity>? reviews,
  }) = _Product;

  factory ProductResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseEntityFromJson(json);
}


@freezed
class ProductListResponseEntity with _$ProductListResponseEntity {
  factory ProductListResponseEntity({
    List<ProductResponseEntity>? products,
  }) = _ProductList;

  factory ProductListResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductListResponseEntityFromJson(json);
}
