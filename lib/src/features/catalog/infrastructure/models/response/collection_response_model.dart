import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keshoohin_flutter_app/src/core/utils/mapper/data_mapper.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/domain/collection_domain_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/infrastructure/models/response/product_response_model.dart';
part 'collection_response_model.freezed.dart';
part 'collection_response_model.g.dart';

@freezed
class CollectionResponseModel with _$CollectionResponseModel {
  const CollectionResponseModel._();
  factory CollectionResponseModel({
    @JsonKey(name: 'IDCollection') required int idCollection,
    @JsonKey(name: 'NameCollection') required String nameCollection,
    @JsonKey(name: 'RoutePath') String? routePath,
    @JsonKey(name: 'CreatedOn') required String createdOn,
    @JsonKey(name: 'Description') String? description,
    @JsonKey(name: 'LogoImagePath') String? logoImagePath,
    @JsonKey(name: 'WallPaperPath') String? wallPaperPath,
    @JsonKey(name: 'StartOn') required String startOn,
    @JsonKey(name: 'EndOn') required String endOn,
    @JsonKey(name: 'CoverImagePath') String? coverImagePath,
    @JsonKey(name: 'Products') List<ProductResponseModel>? collectionproducts,
  }) = _CollectionResponseModel;

  factory CollectionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CollectionResponseModelFromJson(json);
  @Implements<DataMapper<CollectionEntity>>()
  CollectionEntity mapToEntity() {
    return CollectionEntity(
      idCollection: idCollection,
      nameCollection: nameCollection,
      createdOn: createdOn,
      description: description ?? '',
      logoImagePath: logoImagePath ?? '',
      wallPaperPath: wallPaperPath ?? '',
      startOn: startOn,
      endOn: endOn,
      collectionproducts:
          collectionproducts?.map((product) => product.mapToEntity()).toList(),
    );
  }
}
