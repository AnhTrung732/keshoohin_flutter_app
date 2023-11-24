// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_slider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageSliderImpl _$$ImageSliderImplFromJson(Map<String, dynamic> json) =>
    _$ImageSliderImpl(
      idImage: json['IDImage'] as int?,
      startOn: json['StartOn'] as String?,
      endOn: json['EndOn'] as String?,
      path: json['Path'] as String?,
      route: json['Route'] as String?,
      isDeleted: json['IsDeleted'] as int?,
      createdOn: json['CreatedOn'] as String?,
    );

Map<String, dynamic> _$$ImageSliderImplToJson(_$ImageSliderImpl instance) =>
    <String, dynamic>{
      'IDImage': instance.idImage,
      'StartOn': instance.startOn,
      'EndOn': instance.endOn,
      'Path': instance.path,
      'Route': instance.route,
      'IsDeleted': instance.isDeleted,
      'CreatedOn': instance.createdOn,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$asyncImageSliderHash() => r'c1c06f1105a929d536e5ecc87d38ecab9c42e761';

/// See also [AsyncImageSlider].
@ProviderFor(AsyncImageSlider)
final asyncImageSliderProvider = AutoDisposeAsyncNotifierProvider<
    AsyncImageSlider, List<ImageSlider>>.internal(
  AsyncImageSlider.new,
  name: r'asyncImageSliderProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$asyncImageSliderHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AsyncImageSlider = AutoDisposeAsyncNotifier<List<ImageSlider>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
