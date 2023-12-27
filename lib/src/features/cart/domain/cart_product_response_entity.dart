import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/infrastructure/models/response/product_response_model.dart';

part 'cart_product_response_entity.freezed.dart';
part 'cart_product_response_entity.g.dart';

@freezed
class CartProductResponseEntity with _$CartProductResponseEntity {
  const factory CartProductResponseEntity({
    required int quantity,
    required ProductResponseModel product,
  }) = _CartProduct;

  factory CartProductResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$CartProductResponseEntityFromJson(json);
}
