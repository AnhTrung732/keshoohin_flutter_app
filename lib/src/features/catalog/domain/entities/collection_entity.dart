import 'package:equatable/equatable.dart';

class CollectionEntity extends Equatable {
  const CollectionEntity(
      {required this.idCollection,
      required this.nameCollection,
      this.routePath,
      required this.createdOn,
      this.description,
      this.logoImagePath,
      this.wallPaperPath,
      required this.startOn,
      required this.endOn,
      this.coverImagePath});
  final int idCollection;
  final String nameCollection;
  final String? routePath;
  final String createdOn;
  final String? description;
  final String? logoImagePath;
  final String? wallPaperPath;
  final String startOn;
  final String endOn;
  final String? coverImagePath;
  //final List<ProductEntity>? collectionproducts;

  @override
  List<Object?> get props => <Object?>[
        idCollection,
        nameCollection,
        routePath,
        createdOn,
        description,
        logoImagePath,
        wallPaperPath,
        startOn,
        endOn,
        coverImagePath
      ];
}
