import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keshoohin_flutter_app/src/core/utils/mapper/data_mapper.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/domain/entities/product_entity.dart';
import 'brand_response_model.dart';
import 'review_response_model.dart';

part 'product_response_model.freezed.dart';
part 'product_response_model.g.dart';

@freezed
class ImageProductResponseModel with _$ImageProductResponseModel {
  const ImageProductResponseModel._();
  factory ImageProductResponseModel({
    @JsonKey(name: 'Path') String? path,
  }) = _ImageProductResponseModel;

  factory ImageProductResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ImageProductResponseModelFromJson(json);
  @Implements<DataMapper<ImageProductEntity>>()
  ImageProductEntity mapToEntity() {
    return ImageProductEntity(
      path: path,
    );
  }
}

@freezed
class ProductResponseModel with _$ProductResponseModel {
  const ProductResponseModel._();
  factory ProductResponseModel({
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
    @JsonKey(name: 'Brand') BrandResponseModel? brand,
    @JsonKey(name: 'Images') List<ImageProductResponseModel>? images,
    @JsonKey(name: 'Rating') dynamic rating,
    @JsonKey(name: 'Reviews') List<ReviewResponseModel>? reviews,
  }) = _ProductResponseModel;

  factory ProductResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseModelFromJson(json);
  @Implements<DataMapper<ProductEntity>>()
  ProductEntity mapToEntity() {
    return ProductEntity(
      idProduct: idProduct,
      nameProduct: nameProduct,
      idBrand: idBrand,
      description: description ??
          "Chưa có mô tả cho sản phẩm. Shop sẽ cung cấp sau. Chân thành xin lỗi quý khách",
      createdOn: createdOn,
      isDeleted: isDeleted,
      stock: stock,
      totalPurchaseQuantity: totalPurchaseQuantity ?? 0,
      mass: mass ?? 0,
      unitsOfMass: unitsOfMass ?? "g",
      units: units,
      applyTaxes: applyTaxes,
      statusSale: statusSale,
      idTag: idTag,
      idType: idType,
      listPrice: listPrice,
      retailPrice: retailPrice ?? listPrice,
      brand: brand?.mapToEntity(),
      images: images?.map((image) => image.mapToEntity()).toList(),
      rating: rating,
      reviews: reviews?.map((review) => review.mapToEntity()).toList(),
    );
  }
}

@freezed
class ProductListResponseModel with _$ProductListResponseModel {
  const ProductListResponseModel._();
  factory ProductListResponseModel({
    List<ProductResponseModel>? products,
  }) = _ProductListResponseModel;

  factory ProductListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProductListResponseModelFromJson(json);
  @Implements<DataMapper<ListProductEntity>>()
  ListProductEntity mapToEntity() {
    return ListProductEntity(
      products: products?.map((product) => product.mapToEntity()).toList(),
    );
  }
}
