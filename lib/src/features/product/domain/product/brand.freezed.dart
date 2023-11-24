// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Brand _$BrandFromJson(Map<String, dynamic> json) {
  return _Brand.fromJson(json);
}

/// @nodoc
mixin _$Brand {
  @JsonKey(name: 'IDBrand')
  int get idBrand => throw _privateConstructorUsedError;
  @JsonKey(name: 'NameBrand')
  String get nameBrand => throw _privateConstructorUsedError;
  @JsonKey(name: 'IDCollection')
  int? get idCollection => throw _privateConstructorUsedError;
  @JsonKey(name: 'Country')
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'CreatedOn')
  String? get createdOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'IsDeleted')
  int? get isDeleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'TotalProduct')
  int? get totalProduct => throw _privateConstructorUsedError;
  @JsonKey(name: 'TotalPurchaseQuantity')
  int? get totalPurchaseQuantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandCopyWith<Brand> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandCopyWith<$Res> {
  factory $BrandCopyWith(Brand value, $Res Function(Brand) then) =
      _$BrandCopyWithImpl<$Res, Brand>;
  @useResult
  $Res call(
      {@JsonKey(name: 'IDBrand') int idBrand,
      @JsonKey(name: 'NameBrand') String nameBrand,
      @JsonKey(name: 'IDCollection') int? idCollection,
      @JsonKey(name: 'Country') String? country,
      @JsonKey(name: 'CreatedOn') String? createdOn,
      @JsonKey(name: 'IsDeleted') int? isDeleted,
      @JsonKey(name: 'TotalProduct') int? totalProduct,
      @JsonKey(name: 'TotalPurchaseQuantity') int? totalPurchaseQuantity});
}

/// @nodoc
class _$BrandCopyWithImpl<$Res, $Val extends Brand>
    implements $BrandCopyWith<$Res> {
  _$BrandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idBrand = null,
    Object? nameBrand = null,
    Object? idCollection = freezed,
    Object? country = freezed,
    Object? createdOn = freezed,
    Object? isDeleted = freezed,
    Object? totalProduct = freezed,
    Object? totalPurchaseQuantity = freezed,
  }) {
    return _then(_value.copyWith(
      idBrand: null == idBrand
          ? _value.idBrand
          : idBrand // ignore: cast_nullable_to_non_nullable
              as int,
      nameBrand: null == nameBrand
          ? _value.nameBrand
          : nameBrand // ignore: cast_nullable_to_non_nullable
              as String,
      idCollection: freezed == idCollection
          ? _value.idCollection
          : idCollection // ignore: cast_nullable_to_non_nullable
              as int?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as int?,
      totalProduct: freezed == totalProduct
          ? _value.totalProduct
          : totalProduct // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPurchaseQuantity: freezed == totalPurchaseQuantity
          ? _value.totalPurchaseQuantity
          : totalPurchaseQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandImplCopyWith<$Res> implements $BrandCopyWith<$Res> {
  factory _$$BrandImplCopyWith(
          _$BrandImpl value, $Res Function(_$BrandImpl) then) =
      __$$BrandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'IDBrand') int idBrand,
      @JsonKey(name: 'NameBrand') String nameBrand,
      @JsonKey(name: 'IDCollection') int? idCollection,
      @JsonKey(name: 'Country') String? country,
      @JsonKey(name: 'CreatedOn') String? createdOn,
      @JsonKey(name: 'IsDeleted') int? isDeleted,
      @JsonKey(name: 'TotalProduct') int? totalProduct,
      @JsonKey(name: 'TotalPurchaseQuantity') int? totalPurchaseQuantity});
}

/// @nodoc
class __$$BrandImplCopyWithImpl<$Res>
    extends _$BrandCopyWithImpl<$Res, _$BrandImpl>
    implements _$$BrandImplCopyWith<$Res> {
  __$$BrandImplCopyWithImpl(
      _$BrandImpl _value, $Res Function(_$BrandImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idBrand = null,
    Object? nameBrand = null,
    Object? idCollection = freezed,
    Object? country = freezed,
    Object? createdOn = freezed,
    Object? isDeleted = freezed,
    Object? totalProduct = freezed,
    Object? totalPurchaseQuantity = freezed,
  }) {
    return _then(_$BrandImpl(
      idBrand: null == idBrand
          ? _value.idBrand
          : idBrand // ignore: cast_nullable_to_non_nullable
              as int,
      nameBrand: null == nameBrand
          ? _value.nameBrand
          : nameBrand // ignore: cast_nullable_to_non_nullable
              as String,
      idCollection: freezed == idCollection
          ? _value.idCollection
          : idCollection // ignore: cast_nullable_to_non_nullable
              as int?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as int?,
      totalProduct: freezed == totalProduct
          ? _value.totalProduct
          : totalProduct // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPurchaseQuantity: freezed == totalPurchaseQuantity
          ? _value.totalPurchaseQuantity
          : totalPurchaseQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandImpl implements _Brand {
  _$BrandImpl(
      {@JsonKey(name: 'IDBrand') required this.idBrand,
      @JsonKey(name: 'NameBrand') required this.nameBrand,
      @JsonKey(name: 'IDCollection') this.idCollection,
      @JsonKey(name: 'Country') this.country,
      @JsonKey(name: 'CreatedOn') this.createdOn,
      @JsonKey(name: 'IsDeleted') this.isDeleted,
      @JsonKey(name: 'TotalProduct') this.totalProduct,
      @JsonKey(name: 'TotalPurchaseQuantity') this.totalPurchaseQuantity});

  factory _$BrandImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandImplFromJson(json);

  @override
  @JsonKey(name: 'IDBrand')
  final int idBrand;
  @override
  @JsonKey(name: 'NameBrand')
  final String nameBrand;
  @override
  @JsonKey(name: 'IDCollection')
  final int? idCollection;
  @override
  @JsonKey(name: 'Country')
  final String? country;
  @override
  @JsonKey(name: 'CreatedOn')
  final String? createdOn;
  @override
  @JsonKey(name: 'IsDeleted')
  final int? isDeleted;
  @override
  @JsonKey(name: 'TotalProduct')
  final int? totalProduct;
  @override
  @JsonKey(name: 'TotalPurchaseQuantity')
  final int? totalPurchaseQuantity;

  @override
  String toString() {
    return 'Brand(idBrand: $idBrand, nameBrand: $nameBrand, idCollection: $idCollection, country: $country, createdOn: $createdOn, isDeleted: $isDeleted, totalProduct: $totalProduct, totalPurchaseQuantity: $totalPurchaseQuantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandImpl &&
            (identical(other.idBrand, idBrand) || other.idBrand == idBrand) &&
            (identical(other.nameBrand, nameBrand) ||
                other.nameBrand == nameBrand) &&
            (identical(other.idCollection, idCollection) ||
                other.idCollection == idCollection) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.totalProduct, totalProduct) ||
                other.totalProduct == totalProduct) &&
            (identical(other.totalPurchaseQuantity, totalPurchaseQuantity) ||
                other.totalPurchaseQuantity == totalPurchaseQuantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idBrand, nameBrand, idCollection,
      country, createdOn, isDeleted, totalProduct, totalPurchaseQuantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandImplCopyWith<_$BrandImpl> get copyWith =>
      __$$BrandImplCopyWithImpl<_$BrandImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandImplToJson(
      this,
    );
  }
}

abstract class _Brand implements Brand {
  factory _Brand(
      {@JsonKey(name: 'IDBrand') required final int idBrand,
      @JsonKey(name: 'NameBrand') required final String nameBrand,
      @JsonKey(name: 'IDCollection') final int? idCollection,
      @JsonKey(name: 'Country') final String? country,
      @JsonKey(name: 'CreatedOn') final String? createdOn,
      @JsonKey(name: 'IsDeleted') final int? isDeleted,
      @JsonKey(name: 'TotalProduct') final int? totalProduct,
      @JsonKey(name: 'TotalPurchaseQuantity')
      final int? totalPurchaseQuantity}) = _$BrandImpl;

  factory _Brand.fromJson(Map<String, dynamic> json) = _$BrandImpl.fromJson;

  @override
  @JsonKey(name: 'IDBrand')
  int get idBrand;
  @override
  @JsonKey(name: 'NameBrand')
  String get nameBrand;
  @override
  @JsonKey(name: 'IDCollection')
  int? get idCollection;
  @override
  @JsonKey(name: 'Country')
  String? get country;
  @override
  @JsonKey(name: 'CreatedOn')
  String? get createdOn;
  @override
  @JsonKey(name: 'IsDeleted')
  int? get isDeleted;
  @override
  @JsonKey(name: 'TotalProduct')
  int? get totalProduct;
  @override
  @JsonKey(name: 'TotalPurchaseQuantity')
  int? get totalPurchaseQuantity;
  @override
  @JsonKey(ignore: true)
  _$$BrandImplCopyWith<_$BrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
