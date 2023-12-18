import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keshoohin_flutter_app/src/core/utils/mapper/data_mapper.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/domain/collection_domain_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/domain/entities/brand_entity.dart';

part 'brand_response_model.freezed.dart';
part 'brand_response_model.g.dart';

@freezed
class BrandResponseModel with _$BrandResponseModel {
  const BrandResponseModel._();
  factory BrandResponseModel({
    @JsonKey(name: 'IDBrand') required int idBrand,
    @JsonKey(name: 'NameBrand') required String nameBrand,
    @JsonKey(name: 'IDCollection') int? idCollection,
    @JsonKey(name: 'Country') String? country,
    @JsonKey(name: 'CreatedOn') String? createdOn,
    @JsonKey(name: 'IsDeleted') int? isDeleted,
    @JsonKey(name: 'TotalProduct') int? totalProduct,
    @JsonKey(name: 'TotalPurchaseQuantity') int? totalPurchaseQuantity,
  }) = _BrandResponseModel;

  factory BrandResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BrandResponseModelFromJson(json);

  @Implements<DataMapper<BrandEntity>>()
  BrandEntity mapToEntity() {
    return BrandEntity(
      idBrand: idBrand,
      idCollection: idCollection,
      nameBrand: nameBrand,
      country: country,
      totalProduct: totalProduct,
      totalPurchaseQuantity: totalPurchaseQuantity,
    );
  }
}
