// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CouponImpl _$$CouponImplFromJson(Map<String, dynamic> json) => _$CouponImpl(
      iDCoupon: json['iDCoupon'] as int,
      valueDiscount: json['valueDiscount'] as int,
      startOn: json['startOn'] as String,
      endOn: json['endOn'] as String,
      description: json['description'] as String,
      isDeleted: json['isDeleted'] as int,
      minInvoiceValue: json['minInvoiceValue'] as int,
      codeCoupon: json['codeCoupon'] as String,
      quantity: json['quantity'] as int,
      isMutualEvent: json['isMutualEvent'] as int,
      stock: json['stock'] as int,
    );

Map<String, dynamic> _$$CouponImplToJson(_$CouponImpl instance) =>
    <String, dynamic>{
      'iDCoupon': instance.iDCoupon,
      'valueDiscount': instance.valueDiscount,
      'startOn': instance.startOn,
      'endOn': instance.endOn,
      'description': instance.description,
      'isDeleted': instance.isDeleted,
      'minInvoiceValue': instance.minInvoiceValue,
      'codeCoupon': instance.codeCoupon,
      'quantity': instance.quantity,
      'isMutualEvent': instance.isMutualEvent,
      'stock': instance.stock,
    };
