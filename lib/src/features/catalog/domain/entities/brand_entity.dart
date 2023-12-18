import 'package:equatable/equatable.dart';

class BrandEntity extends Equatable {
  const BrandEntity(
      {required this.idBrand,
      required this.nameBrand,
      this.idCollection,
      this.country,
      this.isDeleted,
      this.totalProduct,
      this.totalPurchaseQuantity});

  final int idBrand;
  final String nameBrand;
  final int? idCollection;
  final String? country;
  final int? isDeleted;
  final int? totalProduct;
  final int? totalPurchaseQuantity;

  //final List<ProductEntity>? collectionproducts;

  @override
  List<Object?> get props => <Object?>[
        idBrand,
        nameBrand,
        idCollection,
        isDeleted,
        totalPurchaseQuantity,
      ];
}
