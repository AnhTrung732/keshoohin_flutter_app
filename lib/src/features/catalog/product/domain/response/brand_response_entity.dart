import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_response_entity.freezed.dart';
part 'brand_response_entity.g.dart';

@freezed
class BrandResponseEnity with _$BrandResponseEnity {
  factory BrandResponseEnity({
    @JsonKey(name: 'IDBrand') required int idBrand,
    @JsonKey(name: 'NameBrand') required String nameBrand,
    @JsonKey(name: 'IDCollection') int? idCollection,
    @JsonKey(name: 'Country') String? country,
    @JsonKey(name: 'CreatedOn') String? createdOn,
    @JsonKey(name: 'IsDeleted') int? isDeleted,
    @JsonKey(name: 'TotalProduct') int? totalProduct,
    @JsonKey(name: 'TotalPurchaseQuantity') int? totalPurchaseQuantity,
  }) = _BrandResponseEnity;

  factory BrandResponseEnity.fromJson(Map<String, dynamic> json) => _$BrandResponseEnityFromJson(json);
}
