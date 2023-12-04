// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectionImpl _$$CollectionImplFromJson(Map<String, dynamic> json) =>
    _$CollectionImpl(
      collectionInfor: CollectionInfor.fromJson(
          json['collectionInfor'] as Map<String, dynamic>),
      collectionproducts: (json['collectionproducts'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CollectionImplToJson(_$CollectionImpl instance) =>
    <String, dynamic>{
      'collectionInfor': instance.collectionInfor,
      'collectionproducts': instance.collectionproducts,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$asyncCollectionHash() => r'67e6c80ade608d28ffd4b5e30b89fbe35c05bff1';

/// See also [AsyncCollection].
@ProviderFor(AsyncCollection)
final asyncCollectionProvider =
    AutoDisposeAsyncNotifierProvider<AsyncCollection, Collection>.internal(
  AsyncCollection.new,
  name: r'asyncCollectionProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$asyncCollectionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AsyncCollection = AutoDisposeAsyncNotifier<Collection>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
