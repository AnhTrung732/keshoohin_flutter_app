import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keshoohin_flutter_app/src/features/product/domain/product/product.dart';
part 'collection_infor.freezed.dart';
part 'collection_infor.g.dart';

@freezed
class CollectionInfor with _$CollectionInfor {
  factory CollectionInfor({
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
    
  }) = _CollectionInfor;

  factory CollectionInfor.fromJson(Map<String, dynamic> json) =>
      _$CollectionInforFromJson(json);
}
