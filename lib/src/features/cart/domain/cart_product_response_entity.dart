import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/product/domain/response/product_response_entity.dart';

part 'cart_product_response_entity.freezed.dart';
part 'cart_product_response_entity.g.dart';

@freezed
class CartProductResponseEntity with _$CartProductResponseEntity {
  const factory CartProductResponseEntity({
    required int quantity,
    required ProductResponseEntity product,
  }) = _CartProduct;

  factory CartProductResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$CartProductResponseEntityFromJson(json);
}
