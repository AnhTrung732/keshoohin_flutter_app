// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_product_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartProductImpl _$$CartProductImplFromJson(Map<String, dynamic> json) =>
    _$CartProductImpl(
      quantity: json['quantity'] as int,
      product: ProductResponseModel.fromJson(
          json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CartProductImplToJson(_$CartProductImpl instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'product': instance.product,
    };
