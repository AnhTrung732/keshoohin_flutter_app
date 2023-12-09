// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_slider_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageSliderResponseModelImpl _$$ImageSliderResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ImageSliderResponseModelImpl(
      idImage: json['IDImage'] as int?,
      startOn: json['StartOn'] as String?,
      endOn: json['EndOn'] as String?,
      path: json['Path'] as String?,
      route: json['Route'] as String?,
      isDeleted: json['IsDeleted'] as int?,
      createdOn: json['CreatedOn'] as String?,
    );

Map<String, dynamic> _$$ImageSliderResponseModelImplToJson(
        _$ImageSliderResponseModelImpl instance) =>
    <String, dynamic>{
      'IDImage': instance.idImage,
      'StartOn': instance.startOn,
      'EndOn': instance.endOn,
      'Path': instance.path,
      'Route': instance.route,
      'IsDeleted': instance.isDeleted,
      'CreatedOn': instance.createdOn,
    };
