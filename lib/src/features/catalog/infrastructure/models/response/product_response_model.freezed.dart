// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageProductResponseModel _$ImageProductResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ImageProductResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ImageProductResponseModel {
  @JsonKey(name: 'Path')
  String? get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageProductResponseModelCopyWith<ImageProductResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageProductResponseModelCopyWith<$Res> {
  factory $ImageProductResponseModelCopyWith(ImageProductResponseModel value,
          $Res Function(ImageProductResponseModel) then) =
      _$ImageProductResponseModelCopyWithImpl<$Res, ImageProductResponseModel>;
  @useResult
  $Res call({@JsonKey(name: 'Path') String? path});
}

/// @nodoc
class _$ImageProductResponseModelCopyWithImpl<$Res,
        $Val extends ImageProductResponseModel>
    implements $ImageProductResponseModelCopyWith<$Res> {
  _$ImageProductResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageProductResponseModelImplCopyWith<$Res>
    implements $ImageProductResponseModelCopyWith<$Res> {
  factory _$$ImageProductResponseModelImplCopyWith(
          _$ImageProductResponseModelImpl value,
          $Res Function(_$ImageProductResponseModelImpl) then) =
      __$$ImageProductResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'Path') String? path});
}

/// @nodoc
class __$$ImageProductResponseModelImplCopyWithImpl<$Res>
    extends _$ImageProductResponseModelCopyWithImpl<$Res,
        _$ImageProductResponseModelImpl>
    implements _$$ImageProductResponseModelImplCopyWith<$Res> {
  __$$ImageProductResponseModelImplCopyWithImpl(
      _$ImageProductResponseModelImpl _value,
      $Res Function(_$ImageProductResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = freezed,
  }) {
    return _then(_$ImageProductResponseModelImpl(
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageProductResponseModelImpl extends _ImageProductResponseModel {
  _$ImageProductResponseModelImpl({@JsonKey(name: 'Path') this.path})
      : super._();

  factory _$ImageProductResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageProductResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'Path')
  final String? path;

  @override
  String toString() {
    return 'ImageProductResponseModel(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageProductResponseModelImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageProductResponseModelImplCopyWith<_$ImageProductResponseModelImpl>
      get copyWith => __$$ImageProductResponseModelImplCopyWithImpl<
          _$ImageProductResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageProductResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ImageProductResponseModel extends ImageProductResponseModel {
  factory _ImageProductResponseModel(
          {@JsonKey(name: 'Path') final String? path}) =
      _$ImageProductResponseModelImpl;
  _ImageProductResponseModel._() : super._();

  factory _ImageProductResponseModel.fromJson(Map<String, dynamic> json) =
      _$ImageProductResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'Path')
  String? get path;
  @override
  @JsonKey(ignore: true)
  _$$ImageProductResponseModelImplCopyWith<_$ImageProductResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductResponseModel _$ProductResponseModelFromJson(Map<String, dynamic> json) {
  return _ProductResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ProductResponseModel {
  @JsonKey(name: 'IDProduct')
  int get idProduct => throw _privateConstructorUsedError;
  @JsonKey(name: 'NameProduct')
  String get nameProduct => throw _privateConstructorUsedError;
  @JsonKey(name: 'IDBrand')
  int get idBrand => throw _privateConstructorUsedError;
  @JsonKey(name: 'Description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'CreatedOn')
  String get createdOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'IsDeleted')
  int get isDeleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'Stock')
  int get stock => throw _privateConstructorUsedError;
  @JsonKey(name: 'TotalPurchaseQuantity')
  int? get totalPurchaseQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'Mass')
  int? get mass => throw _privateConstructorUsedError;
  @JsonKey(name: 'UnitsOfMass')
  String? get unitsOfMass => throw _privateConstructorUsedError;
  @JsonKey(name: 'Units')
  String? get units => throw _privateConstructorUsedError;
  @JsonKey(name: 'ApplyTaxes')
  int? get applyTaxes => throw _privateConstructorUsedError;
  @JsonKey(name: 'StatusSale')
  int? get statusSale => throw _privateConstructorUsedError;
  @JsonKey(name: 'IDTag')
  int get idTag => throw _privateConstructorUsedError;
  @JsonKey(name: 'IDType')
  int get idType => throw _privateConstructorUsedError;
  @JsonKey(name: 'ListPrice')
  int get listPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'RetailPrice')
  int? get retailPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'Brand')
  BrandResponseModel? get brand => throw _privateConstructorUsedError;
  @JsonKey(name: 'Images')
  List<ImageProductResponseModel>? get images =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'Rating')
  dynamic get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'Reviews')
  List<ReviewResponseModel>? get reviews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductResponseModelCopyWith<ProductResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductResponseModelCopyWith<$Res> {
  factory $ProductResponseModelCopyWith(ProductResponseModel value,
          $Res Function(ProductResponseModel) then) =
      _$ProductResponseModelCopyWithImpl<$Res, ProductResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'IDProduct') int idProduct,
      @JsonKey(name: 'NameProduct') String nameProduct,
      @JsonKey(name: 'IDBrand') int idBrand,
      @JsonKey(name: 'Description') String? description,
      @JsonKey(name: 'CreatedOn') String createdOn,
      @JsonKey(name: 'IsDeleted') int isDeleted,
      @JsonKey(name: 'Stock') int stock,
      @JsonKey(name: 'TotalPurchaseQuantity') int? totalPurchaseQuantity,
      @JsonKey(name: 'Mass') int? mass,
      @JsonKey(name: 'UnitsOfMass') String? unitsOfMass,
      @JsonKey(name: 'Units') String? units,
      @JsonKey(name: 'ApplyTaxes') int? applyTaxes,
      @JsonKey(name: 'StatusSale') int? statusSale,
      @JsonKey(name: 'IDTag') int idTag,
      @JsonKey(name: 'IDType') int idType,
      @JsonKey(name: 'ListPrice') int listPrice,
      @JsonKey(name: 'RetailPrice') int? retailPrice,
      @JsonKey(name: 'Brand') BrandResponseModel? brand,
      @JsonKey(name: 'Images') List<ImageProductResponseModel>? images,
      @JsonKey(name: 'Rating') dynamic rating,
      @JsonKey(name: 'Reviews') List<ReviewResponseModel>? reviews});

  $BrandResponseModelCopyWith<$Res>? get brand;
}

/// @nodoc
class _$ProductResponseModelCopyWithImpl<$Res,
        $Val extends ProductResponseModel>
    implements $ProductResponseModelCopyWith<$Res> {
  _$ProductResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idProduct = null,
    Object? nameProduct = null,
    Object? idBrand = null,
    Object? description = freezed,
    Object? createdOn = null,
    Object? isDeleted = null,
    Object? stock = null,
    Object? totalPurchaseQuantity = freezed,
    Object? mass = freezed,
    Object? unitsOfMass = freezed,
    Object? units = freezed,
    Object? applyTaxes = freezed,
    Object? statusSale = freezed,
    Object? idTag = null,
    Object? idType = null,
    Object? listPrice = null,
    Object? retailPrice = freezed,
    Object? brand = freezed,
    Object? images = freezed,
    Object? rating = freezed,
    Object? reviews = freezed,
  }) {
    return _then(_value.copyWith(
      idProduct: null == idProduct
          ? _value.idProduct
          : idProduct // ignore: cast_nullable_to_non_nullable
              as int,
      nameProduct: null == nameProduct
          ? _value.nameProduct
          : nameProduct // ignore: cast_nullable_to_non_nullable
              as String,
      idBrand: null == idBrand
          ? _value.idBrand
          : idBrand // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdOn: null == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as int,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      totalPurchaseQuantity: freezed == totalPurchaseQuantity
          ? _value.totalPurchaseQuantity
          : totalPurchaseQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      mass: freezed == mass
          ? _value.mass
          : mass // ignore: cast_nullable_to_non_nullable
              as int?,
      unitsOfMass: freezed == unitsOfMass
          ? _value.unitsOfMass
          : unitsOfMass // ignore: cast_nullable_to_non_nullable
              as String?,
      units: freezed == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as String?,
      applyTaxes: freezed == applyTaxes
          ? _value.applyTaxes
          : applyTaxes // ignore: cast_nullable_to_non_nullable
              as int?,
      statusSale: freezed == statusSale
          ? _value.statusSale
          : statusSale // ignore: cast_nullable_to_non_nullable
              as int?,
      idTag: null == idTag
          ? _value.idTag
          : idTag // ignore: cast_nullable_to_non_nullable
              as int,
      idType: null == idType
          ? _value.idType
          : idType // ignore: cast_nullable_to_non_nullable
              as int,
      listPrice: null == listPrice
          ? _value.listPrice
          : listPrice // ignore: cast_nullable_to_non_nullable
              as int,
      retailPrice: freezed == retailPrice
          ? _value.retailPrice
          : retailPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandResponseModel?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageProductResponseModel>?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as dynamic,
      reviews: freezed == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewResponseModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandResponseModelCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $BrandResponseModelCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductResponseModelImplCopyWith<$Res>
    implements $ProductResponseModelCopyWith<$Res> {
  factory _$$ProductResponseModelImplCopyWith(_$ProductResponseModelImpl value,
          $Res Function(_$ProductResponseModelImpl) then) =
      __$$ProductResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'IDProduct') int idProduct,
      @JsonKey(name: 'NameProduct') String nameProduct,
      @JsonKey(name: 'IDBrand') int idBrand,
      @JsonKey(name: 'Description') String? description,
      @JsonKey(name: 'CreatedOn') String createdOn,
      @JsonKey(name: 'IsDeleted') int isDeleted,
      @JsonKey(name: 'Stock') int stock,
      @JsonKey(name: 'TotalPurchaseQuantity') int? totalPurchaseQuantity,
      @JsonKey(name: 'Mass') int? mass,
      @JsonKey(name: 'UnitsOfMass') String? unitsOfMass,
      @JsonKey(name: 'Units') String? units,
      @JsonKey(name: 'ApplyTaxes') int? applyTaxes,
      @JsonKey(name: 'StatusSale') int? statusSale,
      @JsonKey(name: 'IDTag') int idTag,
      @JsonKey(name: 'IDType') int idType,
      @JsonKey(name: 'ListPrice') int listPrice,
      @JsonKey(name: 'RetailPrice') int? retailPrice,
      @JsonKey(name: 'Brand') BrandResponseModel? brand,
      @JsonKey(name: 'Images') List<ImageProductResponseModel>? images,
      @JsonKey(name: 'Rating') dynamic rating,
      @JsonKey(name: 'Reviews') List<ReviewResponseModel>? reviews});

  @override
  $BrandResponseModelCopyWith<$Res>? get brand;
}

/// @nodoc
class __$$ProductResponseModelImplCopyWithImpl<$Res>
    extends _$ProductResponseModelCopyWithImpl<$Res, _$ProductResponseModelImpl>
    implements _$$ProductResponseModelImplCopyWith<$Res> {
  __$$ProductResponseModelImplCopyWithImpl(_$ProductResponseModelImpl _value,
      $Res Function(_$ProductResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idProduct = null,
    Object? nameProduct = null,
    Object? idBrand = null,
    Object? description = freezed,
    Object? createdOn = null,
    Object? isDeleted = null,
    Object? stock = null,
    Object? totalPurchaseQuantity = freezed,
    Object? mass = freezed,
    Object? unitsOfMass = freezed,
    Object? units = freezed,
    Object? applyTaxes = freezed,
    Object? statusSale = freezed,
    Object? idTag = null,
    Object? idType = null,
    Object? listPrice = null,
    Object? retailPrice = freezed,
    Object? brand = freezed,
    Object? images = freezed,
    Object? rating = freezed,
    Object? reviews = freezed,
  }) {
    return _then(_$ProductResponseModelImpl(
      idProduct: null == idProduct
          ? _value.idProduct
          : idProduct // ignore: cast_nullable_to_non_nullable
              as int,
      nameProduct: null == nameProduct
          ? _value.nameProduct
          : nameProduct // ignore: cast_nullable_to_non_nullable
              as String,
      idBrand: null == idBrand
          ? _value.idBrand
          : idBrand // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdOn: null == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as int,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      totalPurchaseQuantity: freezed == totalPurchaseQuantity
          ? _value.totalPurchaseQuantity
          : totalPurchaseQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      mass: freezed == mass
          ? _value.mass
          : mass // ignore: cast_nullable_to_non_nullable
              as int?,
      unitsOfMass: freezed == unitsOfMass
          ? _value.unitsOfMass
          : unitsOfMass // ignore: cast_nullable_to_non_nullable
              as String?,
      units: freezed == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as String?,
      applyTaxes: freezed == applyTaxes
          ? _value.applyTaxes
          : applyTaxes // ignore: cast_nullable_to_non_nullable
              as int?,
      statusSale: freezed == statusSale
          ? _value.statusSale
          : statusSale // ignore: cast_nullable_to_non_nullable
              as int?,
      idTag: null == idTag
          ? _value.idTag
          : idTag // ignore: cast_nullable_to_non_nullable
              as int,
      idType: null == idType
          ? _value.idType
          : idType // ignore: cast_nullable_to_non_nullable
              as int,
      listPrice: null == listPrice
          ? _value.listPrice
          : listPrice // ignore: cast_nullable_to_non_nullable
              as int,
      retailPrice: freezed == retailPrice
          ? _value.retailPrice
          : retailPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandResponseModel?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageProductResponseModel>?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as dynamic,
      reviews: freezed == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewResponseModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductResponseModelImpl extends _ProductResponseModel {
  _$ProductResponseModelImpl(
      {@JsonKey(name: 'IDProduct') required this.idProduct,
      @JsonKey(name: 'NameProduct') required this.nameProduct,
      @JsonKey(name: 'IDBrand') required this.idBrand,
      @JsonKey(name: 'Description') this.description,
      @JsonKey(name: 'CreatedOn') required this.createdOn,
      @JsonKey(name: 'IsDeleted') required this.isDeleted,
      @JsonKey(name: 'Stock') required this.stock,
      @JsonKey(name: 'TotalPurchaseQuantity') this.totalPurchaseQuantity,
      @JsonKey(name: 'Mass') this.mass,
      @JsonKey(name: 'UnitsOfMass') this.unitsOfMass,
      @JsonKey(name: 'Units') this.units,
      @JsonKey(name: 'ApplyTaxes') this.applyTaxes,
      @JsonKey(name: 'StatusSale') this.statusSale,
      @JsonKey(name: 'IDTag') required this.idTag,
      @JsonKey(name: 'IDType') required this.idType,
      @JsonKey(name: 'ListPrice') required this.listPrice,
      @JsonKey(name: 'RetailPrice') this.retailPrice,
      @JsonKey(name: 'Brand') this.brand,
      @JsonKey(name: 'Images') final List<ImageProductResponseModel>? images,
      @JsonKey(name: 'Rating') this.rating,
      @JsonKey(name: 'Reviews') final List<ReviewResponseModel>? reviews})
      : _images = images,
        _reviews = reviews,
        super._();

  factory _$ProductResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'IDProduct')
  final int idProduct;
  @override
  @JsonKey(name: 'NameProduct')
  final String nameProduct;
  @override
  @JsonKey(name: 'IDBrand')
  final int idBrand;
  @override
  @JsonKey(name: 'Description')
  final String? description;
  @override
  @JsonKey(name: 'CreatedOn')
  final String createdOn;
  @override
  @JsonKey(name: 'IsDeleted')
  final int isDeleted;
  @override
  @JsonKey(name: 'Stock')
  final int stock;
  @override
  @JsonKey(name: 'TotalPurchaseQuantity')
  final int? totalPurchaseQuantity;
  @override
  @JsonKey(name: 'Mass')
  final int? mass;
  @override
  @JsonKey(name: 'UnitsOfMass')
  final String? unitsOfMass;
  @override
  @JsonKey(name: 'Units')
  final String? units;
  @override
  @JsonKey(name: 'ApplyTaxes')
  final int? applyTaxes;
  @override
  @JsonKey(name: 'StatusSale')
  final int? statusSale;
  @override
  @JsonKey(name: 'IDTag')
  final int idTag;
  @override
  @JsonKey(name: 'IDType')
  final int idType;
  @override
  @JsonKey(name: 'ListPrice')
  final int listPrice;
  @override
  @JsonKey(name: 'RetailPrice')
  final int? retailPrice;
  @override
  @JsonKey(name: 'Brand')
  final BrandResponseModel? brand;
  final List<ImageProductResponseModel>? _images;
  @override
  @JsonKey(name: 'Images')
  List<ImageProductResponseModel>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'Rating')
  final dynamic rating;
  final List<ReviewResponseModel>? _reviews;
  @override
  @JsonKey(name: 'Reviews')
  List<ReviewResponseModel>? get reviews {
    final value = _reviews;
    if (value == null) return null;
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductResponseModel(idProduct: $idProduct, nameProduct: $nameProduct, idBrand: $idBrand, description: $description, createdOn: $createdOn, isDeleted: $isDeleted, stock: $stock, totalPurchaseQuantity: $totalPurchaseQuantity, mass: $mass, unitsOfMass: $unitsOfMass, units: $units, applyTaxes: $applyTaxes, statusSale: $statusSale, idTag: $idTag, idType: $idType, listPrice: $listPrice, retailPrice: $retailPrice, brand: $brand, images: $images, rating: $rating, reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductResponseModelImpl &&
            (identical(other.idProduct, idProduct) ||
                other.idProduct == idProduct) &&
            (identical(other.nameProduct, nameProduct) ||
                other.nameProduct == nameProduct) &&
            (identical(other.idBrand, idBrand) || other.idBrand == idBrand) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.totalPurchaseQuantity, totalPurchaseQuantity) ||
                other.totalPurchaseQuantity == totalPurchaseQuantity) &&
            (identical(other.mass, mass) || other.mass == mass) &&
            (identical(other.unitsOfMass, unitsOfMass) ||
                other.unitsOfMass == unitsOfMass) &&
            (identical(other.units, units) || other.units == units) &&
            (identical(other.applyTaxes, applyTaxes) ||
                other.applyTaxes == applyTaxes) &&
            (identical(other.statusSale, statusSale) ||
                other.statusSale == statusSale) &&
            (identical(other.idTag, idTag) || other.idTag == idTag) &&
            (identical(other.idType, idType) || other.idType == idType) &&
            (identical(other.listPrice, listPrice) ||
                other.listPrice == listPrice) &&
            (identical(other.retailPrice, retailPrice) ||
                other.retailPrice == retailPrice) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        idProduct,
        nameProduct,
        idBrand,
        description,
        createdOn,
        isDeleted,
        stock,
        totalPurchaseQuantity,
        mass,
        unitsOfMass,
        units,
        applyTaxes,
        statusSale,
        idTag,
        idType,
        listPrice,
        retailPrice,
        brand,
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(rating),
        const DeepCollectionEquality().hash(_reviews)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductResponseModelImplCopyWith<_$ProductResponseModelImpl>
      get copyWith =>
          __$$ProductResponseModelImplCopyWithImpl<_$ProductResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ProductResponseModel extends ProductResponseModel {
  factory _ProductResponseModel(
      {@JsonKey(name: 'IDProduct') required final int idProduct,
      @JsonKey(name: 'NameProduct') required final String nameProduct,
      @JsonKey(name: 'IDBrand') required final int idBrand,
      @JsonKey(name: 'Description') final String? description,
      @JsonKey(name: 'CreatedOn') required final String createdOn,
      @JsonKey(name: 'IsDeleted') required final int isDeleted,
      @JsonKey(name: 'Stock') required final int stock,
      @JsonKey(name: 'TotalPurchaseQuantity') final int? totalPurchaseQuantity,
      @JsonKey(name: 'Mass') final int? mass,
      @JsonKey(name: 'UnitsOfMass') final String? unitsOfMass,
      @JsonKey(name: 'Units') final String? units,
      @JsonKey(name: 'ApplyTaxes') final int? applyTaxes,
      @JsonKey(name: 'StatusSale') final int? statusSale,
      @JsonKey(name: 'IDTag') required final int idTag,
      @JsonKey(name: 'IDType') required final int idType,
      @JsonKey(name: 'ListPrice') required final int listPrice,
      @JsonKey(name: 'RetailPrice') final int? retailPrice,
      @JsonKey(name: 'Brand') final BrandResponseModel? brand,
      @JsonKey(name: 'Images') final List<ImageProductResponseModel>? images,
      @JsonKey(name: 'Rating') final dynamic rating,
      @JsonKey(name: 'Reviews')
      final List<ReviewResponseModel>? reviews}) = _$ProductResponseModelImpl;
  _ProductResponseModel._() : super._();

  factory _ProductResponseModel.fromJson(Map<String, dynamic> json) =
      _$ProductResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'IDProduct')
  int get idProduct;
  @override
  @JsonKey(name: 'NameProduct')
  String get nameProduct;
  @override
  @JsonKey(name: 'IDBrand')
  int get idBrand;
  @override
  @JsonKey(name: 'Description')
  String? get description;
  @override
  @JsonKey(name: 'CreatedOn')
  String get createdOn;
  @override
  @JsonKey(name: 'IsDeleted')
  int get isDeleted;
  @override
  @JsonKey(name: 'Stock')
  int get stock;
  @override
  @JsonKey(name: 'TotalPurchaseQuantity')
  int? get totalPurchaseQuantity;
  @override
  @JsonKey(name: 'Mass')
  int? get mass;
  @override
  @JsonKey(name: 'UnitsOfMass')
  String? get unitsOfMass;
  @override
  @JsonKey(name: 'Units')
  String? get units;
  @override
  @JsonKey(name: 'ApplyTaxes')
  int? get applyTaxes;
  @override
  @JsonKey(name: 'StatusSale')
  int? get statusSale;
  @override
  @JsonKey(name: 'IDTag')
  int get idTag;
  @override
  @JsonKey(name: 'IDType')
  int get idType;
  @override
  @JsonKey(name: 'ListPrice')
  int get listPrice;
  @override
  @JsonKey(name: 'RetailPrice')
  int? get retailPrice;
  @override
  @JsonKey(name: 'Brand')
  BrandResponseModel? get brand;
  @override
  @JsonKey(name: 'Images')
  List<ImageProductResponseModel>? get images;
  @override
  @JsonKey(name: 'Rating')
  dynamic get rating;
  @override
  @JsonKey(name: 'Reviews')
  List<ReviewResponseModel>? get reviews;
  @override
  @JsonKey(ignore: true)
  _$$ProductResponseModelImplCopyWith<_$ProductResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductListResponseModel _$ProductListResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ProductListResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ProductListResponseModel {
  List<ProductResponseModel>? get products =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductListResponseModelCopyWith<ProductListResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListResponseModelCopyWith<$Res> {
  factory $ProductListResponseModelCopyWith(ProductListResponseModel value,
          $Res Function(ProductListResponseModel) then) =
      _$ProductListResponseModelCopyWithImpl<$Res, ProductListResponseModel>;
  @useResult
  $Res call({List<ProductResponseModel>? products});
}

/// @nodoc
class _$ProductListResponseModelCopyWithImpl<$Res,
        $Val extends ProductListResponseModel>
    implements $ProductListResponseModelCopyWith<$Res> {
  _$ProductListResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductResponseModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductListResponseModelImplCopyWith<$Res>
    implements $ProductListResponseModelCopyWith<$Res> {
  factory _$$ProductListResponseModelImplCopyWith(
          _$ProductListResponseModelImpl value,
          $Res Function(_$ProductListResponseModelImpl) then) =
      __$$ProductListResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductResponseModel>? products});
}

/// @nodoc
class __$$ProductListResponseModelImplCopyWithImpl<$Res>
    extends _$ProductListResponseModelCopyWithImpl<$Res,
        _$ProductListResponseModelImpl>
    implements _$$ProductListResponseModelImplCopyWith<$Res> {
  __$$ProductListResponseModelImplCopyWithImpl(
      _$ProductListResponseModelImpl _value,
      $Res Function(_$ProductListResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_$ProductListResponseModelImpl(
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductResponseModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductListResponseModelImpl extends _ProductListResponseModel {
  _$ProductListResponseModelImpl({final List<ProductResponseModel>? products})
      : _products = products,
        super._();

  factory _$ProductListResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductListResponseModelImplFromJson(json);

  final List<ProductResponseModel>? _products;
  @override
  List<ProductResponseModel>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductListResponseModel(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductListResponseModelImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductListResponseModelImplCopyWith<_$ProductListResponseModelImpl>
      get copyWith => __$$ProductListResponseModelImplCopyWithImpl<
          _$ProductListResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductListResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ProductListResponseModel extends ProductListResponseModel {
  factory _ProductListResponseModel(
          {final List<ProductResponseModel>? products}) =
      _$ProductListResponseModelImpl;
  _ProductListResponseModel._() : super._();

  factory _ProductListResponseModel.fromJson(Map<String, dynamic> json) =
      _$ProductListResponseModelImpl.fromJson;

  @override
  List<ProductResponseModel>? get products;
  @override
  @JsonKey(ignore: true)
  _$$ProductListResponseModelImplCopyWith<_$ProductListResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
