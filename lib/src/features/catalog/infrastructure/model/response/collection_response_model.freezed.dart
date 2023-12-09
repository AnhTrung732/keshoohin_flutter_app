// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CollectionResponseModel _$CollectionResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CollectionResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CollectionResponseModel {
  @JsonKey(name: 'IDCollection')
  int get idCollection => throw _privateConstructorUsedError;
  @JsonKey(name: 'NameCollection')
  String get nameCollection => throw _privateConstructorUsedError;
  @JsonKey(name: 'RoutePath')
  String? get routePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'CreatedOn')
  String get createdOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'Description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'LogoImagePath')
  String? get logoImagePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'WallPaperPath')
  String? get wallPaperPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'StartOn')
  String get startOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'EndOn')
  String get endOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'CoverImagePath')
  String? get coverImagePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'Products')
  List<ProductResponseEntity>? get collectionproducts =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollectionResponseModelCopyWith<CollectionResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionResponseModelCopyWith<$Res> {
  factory $CollectionResponseModelCopyWith(CollectionResponseModel value,
          $Res Function(CollectionResponseModel) then) =
      _$CollectionResponseModelCopyWithImpl<$Res, CollectionResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'IDCollection') int idCollection,
      @JsonKey(name: 'NameCollection') String nameCollection,
      @JsonKey(name: 'RoutePath') String? routePath,
      @JsonKey(name: 'CreatedOn') String createdOn,
      @JsonKey(name: 'Description') String? description,
      @JsonKey(name: 'LogoImagePath') String? logoImagePath,
      @JsonKey(name: 'WallPaperPath') String? wallPaperPath,
      @JsonKey(name: 'StartOn') String startOn,
      @JsonKey(name: 'EndOn') String endOn,
      @JsonKey(name: 'CoverImagePath') String? coverImagePath,
      @JsonKey(name: 'Products')
      List<ProductResponseEntity>? collectionproducts});
}

/// @nodoc
class _$CollectionResponseModelCopyWithImpl<$Res,
        $Val extends CollectionResponseModel>
    implements $CollectionResponseModelCopyWith<$Res> {
  _$CollectionResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idCollection = null,
    Object? nameCollection = null,
    Object? routePath = freezed,
    Object? createdOn = null,
    Object? description = freezed,
    Object? logoImagePath = freezed,
    Object? wallPaperPath = freezed,
    Object? startOn = null,
    Object? endOn = null,
    Object? coverImagePath = freezed,
    Object? collectionproducts = freezed,
  }) {
    return _then(_value.copyWith(
      idCollection: null == idCollection
          ? _value.idCollection
          : idCollection // ignore: cast_nullable_to_non_nullable
              as int,
      nameCollection: null == nameCollection
          ? _value.nameCollection
          : nameCollection // ignore: cast_nullable_to_non_nullable
              as String,
      routePath: freezed == routePath
          ? _value.routePath
          : routePath // ignore: cast_nullable_to_non_nullable
              as String?,
      createdOn: null == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      logoImagePath: freezed == logoImagePath
          ? _value.logoImagePath
          : logoImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      wallPaperPath: freezed == wallPaperPath
          ? _value.wallPaperPath
          : wallPaperPath // ignore: cast_nullable_to_non_nullable
              as String?,
      startOn: null == startOn
          ? _value.startOn
          : startOn // ignore: cast_nullable_to_non_nullable
              as String,
      endOn: null == endOn
          ? _value.endOn
          : endOn // ignore: cast_nullable_to_non_nullable
              as String,
      coverImagePath: freezed == coverImagePath
          ? _value.coverImagePath
          : coverImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionproducts: freezed == collectionproducts
          ? _value.collectionproducts
          : collectionproducts // ignore: cast_nullable_to_non_nullable
              as List<ProductResponseEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollectionResponseModelImplCopyWith<$Res>
    implements $CollectionResponseModelCopyWith<$Res> {
  factory _$$CollectionResponseModelImplCopyWith(
          _$CollectionResponseModelImpl value,
          $Res Function(_$CollectionResponseModelImpl) then) =
      __$$CollectionResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'IDCollection') int idCollection,
      @JsonKey(name: 'NameCollection') String nameCollection,
      @JsonKey(name: 'RoutePath') String? routePath,
      @JsonKey(name: 'CreatedOn') String createdOn,
      @JsonKey(name: 'Description') String? description,
      @JsonKey(name: 'LogoImagePath') String? logoImagePath,
      @JsonKey(name: 'WallPaperPath') String? wallPaperPath,
      @JsonKey(name: 'StartOn') String startOn,
      @JsonKey(name: 'EndOn') String endOn,
      @JsonKey(name: 'CoverImagePath') String? coverImagePath,
      @JsonKey(name: 'Products')
      List<ProductResponseEntity>? collectionproducts});
}

/// @nodoc
class __$$CollectionResponseModelImplCopyWithImpl<$Res>
    extends _$CollectionResponseModelCopyWithImpl<$Res,
        _$CollectionResponseModelImpl>
    implements _$$CollectionResponseModelImplCopyWith<$Res> {
  __$$CollectionResponseModelImplCopyWithImpl(
      _$CollectionResponseModelImpl _value,
      $Res Function(_$CollectionResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idCollection = null,
    Object? nameCollection = null,
    Object? routePath = freezed,
    Object? createdOn = null,
    Object? description = freezed,
    Object? logoImagePath = freezed,
    Object? wallPaperPath = freezed,
    Object? startOn = null,
    Object? endOn = null,
    Object? coverImagePath = freezed,
    Object? collectionproducts = freezed,
  }) {
    return _then(_$CollectionResponseModelImpl(
      idCollection: null == idCollection
          ? _value.idCollection
          : idCollection // ignore: cast_nullable_to_non_nullable
              as int,
      nameCollection: null == nameCollection
          ? _value.nameCollection
          : nameCollection // ignore: cast_nullable_to_non_nullable
              as String,
      routePath: freezed == routePath
          ? _value.routePath
          : routePath // ignore: cast_nullable_to_non_nullable
              as String?,
      createdOn: null == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      logoImagePath: freezed == logoImagePath
          ? _value.logoImagePath
          : logoImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      wallPaperPath: freezed == wallPaperPath
          ? _value.wallPaperPath
          : wallPaperPath // ignore: cast_nullable_to_non_nullable
              as String?,
      startOn: null == startOn
          ? _value.startOn
          : startOn // ignore: cast_nullable_to_non_nullable
              as String,
      endOn: null == endOn
          ? _value.endOn
          : endOn // ignore: cast_nullable_to_non_nullable
              as String,
      coverImagePath: freezed == coverImagePath
          ? _value.coverImagePath
          : coverImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionproducts: freezed == collectionproducts
          ? _value._collectionproducts
          : collectionproducts // ignore: cast_nullable_to_non_nullable
              as List<ProductResponseEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectionResponseModelImpl extends _CollectionResponseModel {
  _$CollectionResponseModelImpl(
      {@JsonKey(name: 'IDCollection') required this.idCollection,
      @JsonKey(name: 'NameCollection') required this.nameCollection,
      @JsonKey(name: 'RoutePath') this.routePath,
      @JsonKey(name: 'CreatedOn') required this.createdOn,
      @JsonKey(name: 'Description') this.description,
      @JsonKey(name: 'LogoImagePath') this.logoImagePath,
      @JsonKey(name: 'WallPaperPath') this.wallPaperPath,
      @JsonKey(name: 'StartOn') required this.startOn,
      @JsonKey(name: 'EndOn') required this.endOn,
      @JsonKey(name: 'CoverImagePath') this.coverImagePath,
      @JsonKey(name: 'Products')
      final List<ProductResponseEntity>? collectionproducts})
      : _collectionproducts = collectionproducts,
        super._();

  factory _$CollectionResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectionResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'IDCollection')
  final int idCollection;
  @override
  @JsonKey(name: 'NameCollection')
  final String nameCollection;
  @override
  @JsonKey(name: 'RoutePath')
  final String? routePath;
  @override
  @JsonKey(name: 'CreatedOn')
  final String createdOn;
  @override
  @JsonKey(name: 'Description')
  final String? description;
  @override
  @JsonKey(name: 'LogoImagePath')
  final String? logoImagePath;
  @override
  @JsonKey(name: 'WallPaperPath')
  final String? wallPaperPath;
  @override
  @JsonKey(name: 'StartOn')
  final String startOn;
  @override
  @JsonKey(name: 'EndOn')
  final String endOn;
  @override
  @JsonKey(name: 'CoverImagePath')
  final String? coverImagePath;
  final List<ProductResponseEntity>? _collectionproducts;
  @override
  @JsonKey(name: 'Products')
  List<ProductResponseEntity>? get collectionproducts {
    final value = _collectionproducts;
    if (value == null) return null;
    if (_collectionproducts is EqualUnmodifiableListView)
      return _collectionproducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CollectionResponseModel(idCollection: $idCollection, nameCollection: $nameCollection, routePath: $routePath, createdOn: $createdOn, description: $description, logoImagePath: $logoImagePath, wallPaperPath: $wallPaperPath, startOn: $startOn, endOn: $endOn, coverImagePath: $coverImagePath, collectionproducts: $collectionproducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionResponseModelImpl &&
            (identical(other.idCollection, idCollection) ||
                other.idCollection == idCollection) &&
            (identical(other.nameCollection, nameCollection) ||
                other.nameCollection == nameCollection) &&
            (identical(other.routePath, routePath) ||
                other.routePath == routePath) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.logoImagePath, logoImagePath) ||
                other.logoImagePath == logoImagePath) &&
            (identical(other.wallPaperPath, wallPaperPath) ||
                other.wallPaperPath == wallPaperPath) &&
            (identical(other.startOn, startOn) || other.startOn == startOn) &&
            (identical(other.endOn, endOn) || other.endOn == endOn) &&
            (identical(other.coverImagePath, coverImagePath) ||
                other.coverImagePath == coverImagePath) &&
            const DeepCollectionEquality()
                .equals(other._collectionproducts, _collectionproducts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      idCollection,
      nameCollection,
      routePath,
      createdOn,
      description,
      logoImagePath,
      wallPaperPath,
      startOn,
      endOn,
      coverImagePath,
      const DeepCollectionEquality().hash(_collectionproducts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionResponseModelImplCopyWith<_$CollectionResponseModelImpl>
      get copyWith => __$$CollectionResponseModelImplCopyWithImpl<
          _$CollectionResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectionResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CollectionResponseModel extends CollectionResponseModel {
  factory _CollectionResponseModel(
          {@JsonKey(name: 'IDCollection') required final int idCollection,
          @JsonKey(name: 'NameCollection') required final String nameCollection,
          @JsonKey(name: 'RoutePath') final String? routePath,
          @JsonKey(name: 'CreatedOn') required final String createdOn,
          @JsonKey(name: 'Description') final String? description,
          @JsonKey(name: 'LogoImagePath') final String? logoImagePath,
          @JsonKey(name: 'WallPaperPath') final String? wallPaperPath,
          @JsonKey(name: 'StartOn') required final String startOn,
          @JsonKey(name: 'EndOn') required final String endOn,
          @JsonKey(name: 'CoverImagePath') final String? coverImagePath,
          @JsonKey(name: 'Products')
          final List<ProductResponseEntity>? collectionproducts}) =
      _$CollectionResponseModelImpl;
  _CollectionResponseModel._() : super._();

  factory _CollectionResponseModel.fromJson(Map<String, dynamic> json) =
      _$CollectionResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'IDCollection')
  int get idCollection;
  @override
  @JsonKey(name: 'NameCollection')
  String get nameCollection;
  @override
  @JsonKey(name: 'RoutePath')
  String? get routePath;
  @override
  @JsonKey(name: 'CreatedOn')
  String get createdOn;
  @override
  @JsonKey(name: 'Description')
  String? get description;
  @override
  @JsonKey(name: 'LogoImagePath')
  String? get logoImagePath;
  @override
  @JsonKey(name: 'WallPaperPath')
  String? get wallPaperPath;
  @override
  @JsonKey(name: 'StartOn')
  String get startOn;
  @override
  @JsonKey(name: 'EndOn')
  String get endOn;
  @override
  @JsonKey(name: 'CoverImagePath')
  String? get coverImagePath;
  @override
  @JsonKey(name: 'Products')
  List<ProductResponseEntity>? get collectionproducts;
  @override
  @JsonKey(ignore: true)
  _$$CollectionResponseModelImplCopyWith<_$CollectionResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
