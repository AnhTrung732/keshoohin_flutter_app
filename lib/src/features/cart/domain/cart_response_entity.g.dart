// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartImpl _$$CartImplFromJson(Map<String, dynamic> json) => _$CartImpl(
      count: json['count'] as int? ?? 0,
      total: json['total'] as int? ?? 0,
      cartProducts: (json['cartProducts'] as List<dynamic>)
          .map((e) =>
              CartProductResponseEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedProductInCart: (json['selectedProductInCart'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toSet() ??
          const {},
      selectedCoupon: json['selectedCoupon'] == null
          ? null
          : Coupon.fromJson(json['selectedCoupon'] as Map<String, dynamic>),
      userDetail: json['userDetail'] == null
          ? null
          : UserDetail.fromJson(json['userDetail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CartImplToJson(_$CartImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'total': instance.total,
      'cartProducts': instance.cartProducts,
      'selectedProductInCart': instance.selectedProductInCart.toList(),
      'selectedCoupon': instance.selectedCoupon,
      'userDetail': instance.userDetail,
    };
