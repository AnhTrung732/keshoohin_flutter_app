// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppUserImpl _$$AppUserImplFromJson(Map<String, dynamic> json) =>
    _$AppUserImpl(
      idUser: json['idUser'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      name: json['name'] as String?,
      userDetail: json['userDetail'] == null
          ? null
          : UserDetail.fromJson(json['userDetail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppUserImplToJson(_$AppUserImpl instance) =>
    <String, dynamic>{
      'idUser': instance.idUser,
      'email': instance.email,
      'phone': instance.phone,
      'name': instance.name,
      'userDetail': instance.userDetail,
    };
