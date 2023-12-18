import 'package:equatable/equatable.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/domain/entities/brand_entity.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/domain/entities/review_entity.dart';

class ImageProductEntity extends Equatable {
  const ImageProductEntity({
    required this.path,
  });

  final String? path;

  @override
  List<Object?> get props => [path];
}

class ProductEntity extends Equatable {
  const ProductEntity({
    required this.idProduct,
    required this.nameProduct,
    required this.idBrand,
    required this.description,
    required this.createdOn,
    required this.isDeleted,
    required this.stock,
    required this.totalPurchaseQuantity,
    required this.mass,
    required this.unitsOfMass,
    this.units,
    this.applyTaxes,
    this.statusSale,
    required this.idTag,
    required this.idType,
    required this.listPrice,
    required this.retailPrice,
    required this.brand,
    this.images,
    this.rating,
    this.reviews,
  });

  final int idProduct;
  final String nameProduct;
  final int idBrand;
  final String description;
  final String createdOn;
  final int isDeleted;
  final int stock;
  final int totalPurchaseQuantity;
  final int mass;
  final String unitsOfMass;
  final String? units;
  final int? applyTaxes;
  final int? statusSale;
  final int idTag;
  final int idType;
  final int listPrice;
  final int retailPrice;
  final BrandEntity? brand;
  final List<ImageProductEntity>? images;
  final dynamic rating;
  final List<ReviewEntity>? reviews;

  @override
  List<Object?> get props => [
        idProduct,
        nameProduct,
        idBrand,
        description,
        createdOn,
        isDeleted,
        stock,
        totalPurchaseQuantity,
        mass,
        unitsOfMass,
        units,
        applyTaxes,
        statusSale,
        idTag,
        idType,
        listPrice,
        retailPrice,
        brand,
        images,
        rating,
        reviews,
      ];
}

class ListProductEntity extends Equatable {
  const ListProductEntity({
    this.products,
  });

  final List<ProductEntity>? products;

  @override
  List<Object?> get props => [products];
}
