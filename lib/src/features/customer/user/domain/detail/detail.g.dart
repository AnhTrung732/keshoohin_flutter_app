// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDetailImpl _$$UserDetailImplFromJson(Map<String, dynamic> json) =>
    _$UserDetailImpl(
      addressDetail: json['addressDetail'] as String? ?? 'addressDetail',
      city: json['city'] as String? ?? 'city',
      district: json['district'] as String? ?? 'district',
      ward: json['ward'] as String? ?? 'ward',
      deviceTokenFCM: json['deviceTokenFCM'] as String? ?? '',
      paymentMethod: json['paymentMethod'] as String? ?? "1",
      selectedProductInCart: (json['selectedProductInCart'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toSet() ??
          const {},
    );

Map<String, dynamic> _$$UserDetailImplToJson(_$UserDetailImpl instance) =>
    <String, dynamic>{
      'addressDetail': instance.addressDetail,
      'city': instance.city,
      'district': instance.district,
      'ward': instance.ward,
      'deviceTokenFCM': instance.deviceTokenFCM,
      'paymentMethod': instance.paymentMethod,
      'selectedProductInCart': instance.selectedProductInCart.toList(),
    };
