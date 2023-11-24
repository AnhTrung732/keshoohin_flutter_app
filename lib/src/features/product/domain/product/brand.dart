import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand.freezed.dart';
part 'brand.g.dart';

@freezed
class Brand with _$Brand {
  factory Brand({
    @JsonKey(name: 'IDBrand') required int idBrand,
    @JsonKey(name: 'NameBrand') required String nameBrand,
    @JsonKey(name: 'IDCollection') int? idCollection,
    @JsonKey(name: 'Country') String? country,
    @JsonKey(name: 'CreatedOn') String? createdOn,
    @JsonKey(name: 'IsDeleted') int? isDeleted,
    @JsonKey(name: 'TotalProduct') int? totalProduct,
    @JsonKey(name: 'TotalPurchaseQuantity') int? totalPurchaseQuantity,
  }) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}
