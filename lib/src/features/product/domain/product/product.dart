import 'package:freezed_annotation/freezed_annotation.dart';
import 'brand.dart';
import 'image.dart';
import 'review.dart';

part 'product.freezed.dart';
part 'product.g.dart';

// @freezed
// class Product with _$Product {
//   factory Product({
//     required ProductInfor productInfor,
//     required ImagesProduct images,
//   }) = _Product;

//   factory Product.fromJson(Map<String, dynamic> json) =>
//       _$ProductFromJson(json);
// }

@freezed
class Product with _$Product {
  factory Product({
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
    @JsonKey(name: 'Brand') Brand? brand,
    @JsonKey(name: 'Images') List<ImageProduct>? images,
    @JsonKey(name: 'Rating') dynamic rating,
    @JsonKey(name: 'Reviews') List<Review>? reviews,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}


@freezed
class ProductList with _$ProductList {
  factory ProductList({
    List<Product>? products,
  }) = _ProductList;

  factory ProductList.fromJson(Map<String, dynamic> json) =>
      _$ProductListFromJson(json);
}
